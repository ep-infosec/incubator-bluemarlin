/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 *  with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0.html
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */


package org.apache.bluemarlin.pfservice.config;

import org.elasticsearch.client.RestHighLevelClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.elasticsearch.client.ClientConfiguration;
import org.springframework.data.elasticsearch.client.RestClients;
import org.springframework.data.elasticsearch.config.AbstractElasticsearchConfiguration;


@Configuration
public class RestClientConfig extends AbstractElasticsearchConfiguration
{
    @Autowired
    @Qualifier("SystemConfig")
    SystemConfig systemConfig;

    @Override
    @Bean
    @Qualifier("RestHighLevelClient")
    public RestHighLevelClient elasticsearchClient()
    {
        String connectionSting = String.format("%s:%s", systemConfig.getDinUCDocESHost(), systemConfig.getDinUCDocESPort());
        final ClientConfiguration clientConfiguration = ClientConfiguration.builder()
                .connectedTo(connectionSting)
                .build();

        return RestClients.create(clientConfiguration).rest();
    }

}
