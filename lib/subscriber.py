import paho.mqtt.subscribe as subscribe


def receive_msg(client, user_data, msg):
    for data in user_data:
        data.update(msg.topic, msg.payload.decode())


def run(data_list):
    broker_address = "127.0.0.1"
    # password = "yMk7upKt2dcGEao3u2uxvXC4KnQRL224"
    # username = "messages"
    # port = 27408
    # ssl_certificate = r"ca.crt"
    # username = "messages"
    port = 1883
    # ssl_certificate = r"ca.crt"
    # subscribe.callback(receive_msg, "immerse/#", userdata=data_list, hostname=broker_address, port=port,
    #                    auth={'username': username, 'password': password}, tls={'ca_certs': ssl_certificate})
    subscribe.callback(receive_msg, "byu_ssdd/input", userdata=data_list, hostname=broker_address, port=port)


if __name__ == '__main__':
    run()