import json
import boto3

# Cliente Bedrock usado para interagir com APIs em torno de modelos
bedrock = boto3.client(
    service_name='bedrock',
    region_name='us-east-1'
)

# Cliente Bedrock Runtime usado para invocar e questionar os modelos
bedrock_runtime = boto3.client(
    service_name='bedrock-runtime',
    region_name='us-east-1'
)

def lambda_handler(event, context):
    # Apenas mostra um exemplo de como recuperar informações sobre modelos disponíveis
    foundation_models = bedrock.list_foundation_models()
    matching_model = next((model for model in foundation_models["modelSummaries"] if model.get("modelName") == "Jurassic-2 Ultra"), None)

    prompt = json.loads(event.get("body")).get("input").get("question")

    # A carga útil a ser fornecida ao Bedrock
    body = json.dumps({
        "prompt": prompt,
        "maxTokens": 200,
        "temperature": 0.7,
        "topP": 1,
    })

    # A chamada real para recuperar uma resposta do modelo
    response = bedrock_runtime.invoke_model(
        body=body,
        modelId=matching_model["modelId"],
        accept='application/json',
        contentType='application/json'
    )

    response_body = json.loads(response['body'].read())

    # A resposta do modelo agora mapeada para a resposta
    answer = response_body.get('completions')[0].get('data').get('text')

    return {
        'statusCode': 200,
        'body': json.dumps({"Answer": answer})
    }
