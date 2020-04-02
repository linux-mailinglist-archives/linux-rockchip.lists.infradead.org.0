Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C4819C048
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 13:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFfaJAB6rE7ZA8Zao8We13ynsc+iecoVAmfPjzjfaq8=; b=Uo6FKAlECuuChX
	nPf2imHOYesMxShSe/i/sa+++/O8ej8A7WFs31yXzxx/gIp3c5aMy/tilImo85ZZd0as7wCSuUgKd
	PouHHW6novbiCPrCF/5CDUzdiR1aOs/CtYOSvdjXLcRM/vg83v4g3EoQQyuS+3BO7WqbNl5PSqIMe
	R32Ys4li94O+Bk5AiQ/bhvllXdJU/sKi+xliC6Lrv9mzFRxnni9/PZR/hCQdtkJUQZgLtly0EjFr6
	zQoCjSieVuI95M5YA2JA/tdQ94KkQjTqfIdKBSNHJhZ6iDFEWSGDTzQwZ2ehFITjPrY9BiAsIQr1p
	zMLk9SS6XapGPGi3RrVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJy7u-00074x-Nu; Thu, 02 Apr 2020 11:35:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJy7q-0006Kw-Lv
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 11:35:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id c7so3767227wrx.5
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 04:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3jRj6ArkhLpwKk89KkNwwo0VNZLkATY3JVXtCwdIArM=;
 b=K5EVHPS43D3wRMjNBYwFajRGzmakbnuj+UOMC+I3xmc/oBhq64lltzXE7tKv9ShvUq
 CtkZGwuDchILQM06WFVgVpu9QVxOfiQOJPLogjjrq7Noy1yl/sgroQB7YifPJ9J2Q9Sn
 nEWmbWbVkGjxYs1EGON1aNgsjj8TbBTVajQw2Cqh9bvzZiyLgOvXfqqaSwiChuPcvQwj
 UXVolcpVUn68hUorItLk6ayhBoV+pxvY17WazrWj4vC5NQ059F0EJe2koBP1s1NG0ESl
 7eSrl2K/7zk/XIPmzVQ+x2c5+RHguj+65zeVfXvTlvo/Jx/GK13Jx3Kn4i8RrKOmmxci
 eyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3jRj6ArkhLpwKk89KkNwwo0VNZLkATY3JVXtCwdIArM=;
 b=PwpcTzz2rNgXcJ/qNwkA8vVkGJdfGPKb46TAX1+YxZZJ4+XA/oIqXxQduisgW2UBz0
 O5DzOpYZWPr65s+ecjsfP8o44y3vk7KDgROKQc5gvm0hZ2Js+oGBq+Qp5+6uThkfVIYJ
 P512P46PQUGZuL7RdKL5sf6QJRdJnImaMPCbZTpza0IeVO1qqP+NH6+gxNAzOwFduWoQ
 3QQQ9/A3VgV3QmdDftDYnF6HVFNIW/UFaKDSd/RsE6918m6z+cGaHhETun217i/WjODw
 lJgDQv07ne99kdGgEHn/yUSt1EeFbw1IPNShjabiuDt0gx6Qr57TQQFGygvcK2uCpeIZ
 FNIw==
X-Gm-Message-State: AGi0PuaiOJu3bVm55TOaG8CRghgTRMiDU9uNKywneoV3HS3+UWiy1Aq7
 m67cqUqQ8OnADrJpfPeRvnU=
X-Google-Smtp-Source: APiQypJScYhchNteJw20HMwQtHnfXa6FcDztGwsdbPdIPctfKge9tKbWTf7Ki51Ie81cFzzp4rihKQ==
X-Received: by 2002:adf:97d0:: with SMTP id t16mr3091065wrb.343.1585827308886; 
 Thu, 02 Apr 2020 04:35:08 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m19sm5863793wml.21.2020.04.02.04.35.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 04:35:08 -0700 (PDT)
To: helen.koike@collabora.com
References: <20200402000234.226466-3-helen.koike@collabora.com>
Subject: Re: [PATCH 2/4] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7e53ec1e-33bd-3385-40a0-de3fd00ad1a1@gmail.com>
Date: Thu, 2 Apr 2020 13:35:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402000234.226466-3-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_043510_766594_D8A95DD5 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> %YAML 1.2
> ---
> $id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
> $schema: http://devicetree.org/meta-schemas/core.yaml#
> 

> title: Rockchip SoC Image Signal Processing unit v1

Where do we need 'v1' for? Is there a 'v2'?

> 
> maintainers:
>   - Helen Koike <helen.koike@collabora.com>
> 
> description: |
>   Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
>   which contains image processing, scaling, and compression functions.
> 
> properties:
>   compatible:
>     const: rockchip,rk3399-cif-isp
> 
>   reg:
>     maxItems: 1
> 
>   interrupts:
>     maxItems: 1
> 
>   iommus:
>     maxItems: 1
> 
>   power-domains:
>     maxItems: 1
> 
>   phys:
>     maxItems: 1
>     description: phandle for the PHY port
> 
>   phy-names:
>     const: dphy
> 
>   clocks:
>     items:
>       - description: ISP clock
>       - description: ISP AXI clock clock
>       - description: ISP AXI clock  wrapper clock
>       - description: ISP AHB clock clock
>       - description: ISP AHB wrapper clock
> 
>   clock-names:
>     items:
>       - const: clk_isp
>       - const: aclk_isp
>       - const: aclk_isp_wrap
>       - const: hclk_isp
>       - const: hclk_isp_wrap
> 
>   # See ./video-interfaces.txt for details
>   ports:
>     type: object
>     additionalProperties: false
> 
>     properties:
>       "#address-cells":
>         const: 1
> 
>       "#size-cells":
>         const: 0
> 
>       port@0:
>         type: object
>         description: connection point for sensors at MIPI-DPHY RX0

>         additionalProperties: false

Nothing required here?

> 
>         properties:
>           "#address-cells":
>             const: 1
> 
>           "#size-cells":
>             const: 0
> 
>           reg:
>             const: 0
> 
>         patternProperties:
>           endpoint:
>             type: object
>             additionalProperties: false
> 
>             properties:
>               reg:
>                 maxItems: 1
> 
>               data-lanes:
>                 minItems: 1
>                 maxItems: 4
> 
>               remote-endpoint: true
> 
>     required:

>       - port@0

The use of '@0' makes "#address-cells" and "#size-cells" also a requirement.

- "#address-cells"
- "#size-cells"

> 
> required:
>   - compatible

How about 'reg'?

- reg

>   - interrupts
>   - clocks
>   - clock-names
>   - power-domains
>   - iommus
>   - phys
>   - phy-names
>   - ports
> 
> additionalProperties: false
> 
> examples:
>   - |
> 
>     #include <dt-bindings/clock/rk3399-cru.h>
>     #include <dt-bindings/interrupt-controller/arm-gic.h>
>     #include <dt-bindings/power/rk3399-power.h>
> 
>     parent0: parent@0 {
>         #address-cells = <2>;
>         #size-cells = <2>;
> 
>         isp0: isp0@ff910000 {
>             compatible = "rockchip,rk3399-cif-isp";
>             reg = <0x0 0xff910000 0x0 0x4000>;
>             interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>             clocks = <&cru SCLK_ISP0>,
>                      <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>                      <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>             clock-names = "clk_isp",
>                           "aclk_isp", "aclk_isp_wrap",
>                           "hclk_isp", "hclk_isp_wrap";
>             power-domains = <&power RK3399_PD_ISP0>;
>             iommus = <&isp0_mmu>;
>             phys = <&dphy>;
>             phy-names = "dphy";
> 
>             ports {
>                 #address-cells = <1>;
>                 #size-cells = <0>;
> 
>                 port@0 {
>                     #address-cells = <1>;
>                     #size-cells = <0>;
>                     reg = <0>;
> 
>                     mipi_in_wcam: endpoint@0 {
>                         reg = <0>;
>                         remote-endpoint = <&wcam_out>;
>                         data-lanes = <1 2>;
>                     };
> 
>                     mipi_in_ucam: endpoint@1 {
>                         reg = <1>;
>                         remote-endpoint = <&ucam_out>;
>                         data-lanes = <1>;
>                     };
>                 };
>             };
>         };
> 

>         i2c7: i2c@ff160000 {
>             clock-frequency = <400000>;
>             #address-cells = <1>;
>             #size-cells = <0>;

Incomplete example.
From i2c-rk3x.yaml:

required:
  - compatible
  - reg
  - interrupts
  - clocks
  - clock-names

> 
>             wcam: camera@36 {
>                 compatible = "ovti,ov5695";
>                 reg = <0x36>;
> 
>                 port {
>                     wcam_out: endpoint {
>                         remote-endpoint = <&mipi_in_wcam>;
>                         data-lanes = <1 2>;
>                     };
>                 };
>             };
> 
>             ucam: camera@3c {
>                 compatible = "ovti,ov2685";
>                 reg = <0x3c>;
> 
>                   port {
>                       ucam_out: endpoint {
>                           remote-endpoint = <&mipi_in_ucam>;
>                           data-lanes = <1>;
>                       };
>                   };
>             };
>         };
>     };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
