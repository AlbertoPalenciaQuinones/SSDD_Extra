import sys
from kafka import KafkaConsumer, KafkaProducer
import json
import Ice
import RemoteCalculator

# Configurar Ice
with Ice.initialize(sys.argv) as communicator:
    proxy = communicator.stringToProxy("calculator:default -h localhost -p 10000")
    calculator = RemoteCalculator.CalculatorPrx.checkedCast(proxy)

    consumer = KafkaConsumer(
        'calculator-requests',
        bootstrap_servers='localhost:9092',
        value_deserializer=lambda m: json.loads(m.decode('utf-8'))
    )

    producer = KafkaProducer(
        bootstrap_servers='localhost:9092',
        value_serializer=lambda m: json.dumps(m).encode('utf-8')
    )
    # PRODUCIR MENSAJE JSON AL TOPIC EJEMPLO
    mensaje = {
        "id": "op1",
        "operation": "sum",
        "args": {
            "op1": 5.0,
            "op2": 10.4
        }
    }

    for json in CARPETA:
        producer.send("calculator-requests", mensaje)

    for message in consumer:
        request = message.value
        # METER CONDICIONALES Y COMPROBAR QUE EL FORMATO DEL JSON ES CORRECTO
        # SI HUBIERA ERROR DEBERÍA PASAR ESTO EN EL IF:
        # raise ValueError("Error de formato en el JSON")
        id = request.get('id')
        try:
            operation = request['operation']
            args = request['args']
            op1 = args['op1']
            op2 = args['op2']

            if operation == 'sum':
                result = calculator.sum(op1, op2)
            elif operation == 'sub':
                result = calculator.sub(op1, op2)
            elif operation == 'mult':
                result = calculator.mult(op1, op2)
            elif operation == 'div':
                result = calculator.div(op1, op2)
            else:
                raise ValueError("Invalid operation")

            response = {
                'id': id,
                'status': True,
                'result': result
            }
        except Exception as e:
            response = {
                'id': id,
                'status': False,
                'error': str(e)
            }
        
        producer.send('calculator-responses', response)
