from flask import Flask, jsonify
import mysql.connector


app = Flask(__name__)


def dados_users():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'escola360'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute('SELECT nome, tipo_usuario AS "Função", email FROM usuarios')
    results = cursor.fetchall()
    cursor.close()
    connection.close()
    return results


@app.route('/')
def index():
    return jsonify({'Escola360 - Usuários': dados_users()})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)