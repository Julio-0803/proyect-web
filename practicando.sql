 --DETALLES PEDIDOS, PEDIDOS Y PRODUCTOS
 SELECT * FROM Productos;
 SELECT * FROM [Detalles de pedidos];
 SELECT * FROM Pedidos;

 SELECT * FROM Productos p inner join [Detalles de pedidos] d
 ON p.IdProducto = d.IdProducto 
 where p.IdProducto = 2;
 ---
 SELECT * FROM Productos p inner join [Detalles de pedidos] d
 ON p.IdProducto = d.IdProducto 
 where p.NombreProducto LIKE '%Cerveza tibe%';
 --
 SELECT SUM(Cantidad) FROM Productos p inner join [Detalles de pedidos] d
 ON p.IdProducto = d.IdProducto 
 where p.NombreProducto LIKE '%Cerveza tibe%';
 --
 SELECT SUM(d.PrecioUnidad*Cantidad) FROM Productos p inner join [Detalles de pedidos] d
 ON p.IdProducto = d.IdProducto 
 where p.NombreProducto LIKE '%Cerveza tibe%';

 SELECT p.NombreProducto, d.IdPedido, d.PrecioUnidad, 
 d.Cantidad, c.IdCliente, c.Dirección, c.País, (d.PrecioUnidad*Cantidad) as Monto
 FROM Productos p inner join [Detalles de pedidos] d
 ON p.IdProducto = d.IdProducto
 inner join Pedidos pe
 ON d.IdPedido = pe.IdPedido
 inner join Clientes c
 ON pe.IdCliente = c.IdCliente