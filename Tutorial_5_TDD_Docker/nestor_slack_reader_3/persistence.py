import pymongo
import pika
# pip install pymongo

def get_database_name():
    return "nestor"

def get_mongo_host():
    return "localhost"

def get_mongo_port():
    return 27017

def get_rabbit_host():
    return "localhost"

def get_connection_name():
    return "mensajes"
    
def sssconnect_database(database_name):
    #conexion a db
    myclient = pymongo.MongoClient(get_mongo_host(), get_mongo_port())
    db = myclient[get_database_name()]

    return db


def connect_database(database_name):
    #conexion a db
    myclient = pymongo.MongoClient(get_mongo_host(), get_mongo_port())
    db = myclient[get_database_name()]

    return db
    
def write_message_in_database(message, database_name, collection_name):

    database = connect_database(database_name)

    my_doc = {"message":message}

    print("Writing a new document in the databse:"+str(my_doc))

    database[collection_name].insert_one(my_doc)

def connect_rabbitmq(exchange, queue, routing_key):

    connection = pika.BlockingConnection(pika.ConnectionParameters(host=get_rabbitmq_host()))
    
    channel = connection.channel()

    chanel.exchange_declare(exchange=exchange, exchange_type='topic', durable=True)

    queue_name

    return channel 

def on_message(ch, method, propierties, body):
    print("Message received: ", body.decode())
    message = body.decode()
    write_message_in_database(" ",message,DATABASE,COLLECTION)

def consume_message(exchange, queue, routing_key):
    print(' [* Waiting for messages. TO exit press CTRL+C')

    channel = connect_rabbitmq(exchange, queue, routing_key)

    channel.basic_consume(queue=queue, on_message_callback = on_message, auto_ack=True)


