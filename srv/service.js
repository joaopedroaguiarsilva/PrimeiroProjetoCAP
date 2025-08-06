const cds = require('@sap/cds')


module.exports = async (srv) => {

    const db = await cds.connect.to('db');

    //srv.before('READ', 'Customers', (req) => {
    // const data = req.data;
    //});


    //srv.on('READ', 'Customers', (req) => {
    //   console.log(req)
    //
    //   return {
    //        name: 'Dudu'
    //   }
    //});


    //srv.after('READ', 'Customers', () => {
    //   console.log(req)

    //        return {
    //               name: 'Dudu'
    //    }
    //});



    srv.before('CREATE', 'Customers', (req) => {
        const data = req.data;
    });

    srv.on('CREATE', 'Customers', async(req) => {
        const data = req.data;

        const response = await INSERT(data).into(db.entities.Customers);

        return req.data;
    });

    srv.on('CREATE', 'Customers', (req) => {
        const data = req.data;


    });





    //srv.on('UPDATE')
    //srv.on('DELETE')
}