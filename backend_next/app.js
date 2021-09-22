const express = require('express');
const cors = require('cors');
const path = require('path');

const app = express();

const Home = require('./models/Home');
const About = require('./models/About');
const ContentContact = require('./models/ContentContact');
const MsgContact = require('./models/MsgContact');

app.use(express.json());

app.use('/files', express.static(path.resolve(__dirname, "public", "upload")));

app.use((req, res, next) => {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE");
  res.header("Access-Control-Allow-Headers", "X-PINGOTHER, Content-Type, Authorization");
  app.use(cors());
  next();
});

app.get('/view-home', async (req, res) => {
  await Home.findOne()
    .then((dataHome) => {
      return res.json({
        erro: false,
        dataHome,
        urlImage: "http://localhost:8080/files/home/"
      });
    }).catch(() => {
      return res.status(400).json({
        erro: true,
        mensagem: "Erro: Nenhum valor encontrado para a página home!"
      });
    })
});

app.post('/add-home', async (req, res) => {

  const dataHome = await Home.findOne();

  if (dataHome) {
    return res.status(400).json({
      erro: true,
      mensagem: "Erro: Não cadastrado com sucesso, a página home possui um registro!"
    });
  }

  await Home.create(req.body)
    .then(() => {
      return res.json({
        erro: false,
        mensagem: "Dados para página home cadastrado com sucesso!"
      });
    }).catch(() => {
      return res.status(400).json({
        erro: true,
        mensagem: "Erro: Dados para página home não cadastrado com sucesso!"
      });
    });
});

app.get('/list-about', async (req, res) => {
  await About.findAll({
    attributes: ['id', 'title_about', 'desc_about', 'image_about'],
    order: [['id', 'DESC']]
  })
  .then((abouts) => {
    return res.json({
      erro: false,
      abouts,
      urlImage: "http://localhost:8080/files/home/" 
    });
  }).catch(() => {
    return res.status(400).json({
      erro: true,
      mensagem: "Erro: Nenhum valor encontrado para a página sobre empresa!"     
    });
  })
});

app.post('/add-about', async (req, res) => {
  await About.create(req.body)
    .then(() => {
      return res.json({
        erro: false,
        mensagem: "Dados para página sobre empresa cadastrado com sucesso!"
      });
    }).catch(() => {
      return res.status(400).json({
        erro: true,
        mensagem: "Erro: Dados para página sobre empresa não cadastrado com sucesso!"
      });
    });
});

app.get('/view-content-contact', async (req, res) => {
  await ContentContact.findOne()
    .then((dataContact) => {
      return res.json({
        erro: false,
        dataContact
      });
    }).catch(() => {
      return res.status(400).json({
        erro: true,
        mensagem: "Erro: Nenhum valor encontrado para a página contato!"
      });
    })
});

app.post('/add-content-contact', async (req, res) => {
  await ContentContact.create(req.body)
    .then(() => {
      return res.json({
        erro: false,
        mensagem: "Dados para página contato cadastrado com sucesso!"
      });
    }).catch(() => {
      return res.status(400).json({
        erro: true,
        mensagem: "Erro: Dados para página contato não cadastrado com sucesso!"
      });
    });
});

app.post('/add-msg-contact', async (req, res) => {

  await sleep(3000);

  function sleep(ms){
    return new Promise((resolve) => {
      setTimeout(resolve, ms);
    });
  }

  await MsgContact.create(req.body)
    .then(() => {
      return res.json({
        erro: false,
        mensagem: "Mensagem de contato enviando com sucesso!"
      });
    }).catch(() => {
      return res.status(400).json({
        erro: true,
        mensagem: "Erro: Mensagem de contato não enviando com sucesso!"
      });
    });
});

app.listen(8080, () => {
  console.log("Servidor iniciado na porta 8080: http://localhost:8080");
});