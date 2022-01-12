import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { Logger } from '@nestjs/common';

const port = process.env.PORT;
const host = process.env.HOST;
const logger = `Orientador`;

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(port);
  Logger.log(`Server started running on http://${host}:${port}`, logger);
}

function readEnvFile() {
  const result = require('dotenv').config();
  if (result.error) {
    throw result.error;
  }
}

readEnvFile();
bootstrap();
