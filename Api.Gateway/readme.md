{
  "Routes": [
 
    {
      //ruta a donde el cliente apunta
      "UpstreamPathTemplate": "/todos",
      "UpstreamHttpMethod": ["GET"],

      //ruta del endpoint del servicio a consumir
      "DownstreamPathTemplate": "/todos",
      "DownstreamScheme": "https",
      "DownstreamHostAndPorts": [
        {
          "Host": "jsonplaceholder.typicode.com",
          "Port": 443
        }
      ]
    },
    {
       "UpstreamPathTemplate": "/posts",
      "UpstreamHttpMethod": ["GET"],

       "DownstreamPathTemplate": "/posts",
      "DownstreamScheme": "https",
      "DownstreamHostAndPorts": [
        {
          "Host": "jsonplaceholder.typicode.com",
          "Port": 443
        }
      ]
    }
  ],
  "GlobalConfiguration"
  : {
    "BaseUrl": "https://localhost:5000/" //Url del API Gateway
  }
}
