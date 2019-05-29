Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BD12D83A
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 10:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/CZ9QGNAmIJKfix3LzY2ujU59axnKE33SOXdXL60L8=; b=OsvtzezTctGh40
	67n9Rv0Ug45pJ4RE3NpMjyB93UMG6+CBry/OMkMtP7MaC8xVhxYWhitXU3nR7WO7fRQTi1VEhu+Y3
	IwkUsFlJ48pyG65rni/Se8bFVHPWjmp7jFlPMkP3HvbIObruVHfAHWJ6FLizTOL+IlfwjmtAbiYjQ
	Og9SpefVQ3kGqjJAOr5pFLWof8cZ9QgBCyXI31hWM5wxZCtDSWcbyrs5N2W06EvvbTStKsseUrqBZ
	UpO14oYMeF/PgM1wLY/3xiF8vv0NWcaFT7Y/oO/34wbxg9x2incMuBB/Mb7xUwphifTfS5tsIGkg2
	OEKw0UoTJFV9NIROIHeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuI1-0004nV-Qx; Wed, 29 May 2019 08:50:29 +0000
Received: from mail-oln040092066067.outbound.protection.outlook.com
 ([40.92.66.67] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuHx-0004mg-UO
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 08:50:28 +0000
Received: from VE1EUR01FT061.eop-EUR01.prod.protection.outlook.com
 (10.152.2.53) by VE1EUR01HT068.eop-EUR01.prod.protection.outlook.com
 (10.152.3.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16; Wed, 29 May
 2019 08:50:15 +0000
Received: from VI1PR03MB4206.eurprd03.prod.outlook.com (10.152.2.54) by
 VE1EUR01FT061.mail.protection.outlook.com (10.152.3.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 29 May 2019 08:50:15 +0000
Received: from VI1PR03MB4206.eurprd03.prod.outlook.com
 ([fe80::883e:1bd6:cd36:5fb0]) by VI1PR03MB4206.eurprd03.prod.outlook.com
 ([fe80::883e:1bd6:cd36:5fb0%4]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 08:50:15 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia
 <ezequiel@collabora.com>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>
Subject: Re: [PATCH v6 16/16] rockchip/vpu: Add support for MPEG-2 decoding on
 RK3328
Thread-Topic: [PATCH v6 16/16] rockchip/vpu: Add support for MPEG-2 decoding
 on RK3328
Thread-Index: AQHVFXdhpRepMa94eEGuSMAzTBHJuKaBwT4AgAAK3gA=
Date: Wed, 29 May 2019 08:50:15 +0000
Message-ID: <VI1PR03MB42066B8C9F364ACF7CFFF241AC1F0@VI1PR03MB4206.eurprd03.prod.outlook.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
 <20190528170232.2091-17-ezequiel@collabora.com>
 <2ef056a2-e9dc-52b1-855b-2bef759af9b6@xs4all.nl>
In-Reply-To: <2ef056a2-e9dc-52b1-855b-2bef759af9b6@xs4all.nl>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0359.eurprd05.prod.outlook.com
 (2603:10a6:7:94::18) To VI1PR03MB4206.eurprd03.prod.outlook.com
 (2603:10a6:803:51::23)
x-incomingtopheadermarker: OriginalChecksum:20A87F0BA1C3D2FB3B744FC7DFCAEB88EE81604F598F3826906A6AF854513679;
 UpperCasedChecksum:182735A26054809C3C58B62960D6A0A5BC036E699FD56A4DB264A3E87378954E;
 SizeAsReceived:7981; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Xx/JXVj35Kcj/12GZKRSDQfqtdc5X1Hi]
x-microsoft-original-message-id: <7125752d-474a-de74-5433-51070cf8e63f@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR01HT068; 
x-ms-traffictypediagnostic: VE1EUR01HT068:
x-microsoft-antispam-message-info: w+Q/k/VRgEhFMmueK1zvC8XeGZNxealZjDC0fqeS2z7t43DB7vUhbWY1dfcBhS0GDwdEqVl7kMUkFBVxyQEVGTbQEuZwsJg7QH3T+CdgOE1ussXTn5VTck/8TDIqEAKf2ZfSNjMM3WNYVjhplhBrtOIHQqWc09aywjb8D49U/zorsUaKWsVwMpaOXV/4/yvZ
Content-ID: <992634C6FE8AB649B52E07A020C1542B@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 57147df8-b5d3-4747-fd26-08d6e412aa9b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 08:50:15.1502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_015025_990316_961E84C3 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Tomasz Figa <tfiga@chromium.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "kernel@collabora.com" <kernel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-05-29 10:11, Hans Verkuil wrote:
> On 5/28/19 7:02 PM, Ezequiel Garcia wrote:
>> From: Jonas Karlman <jonas@kwiboo.se>
>>
>> Add necessary bits to support MPEG2 decoding on RK3328.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
>> --
>> Changes from v5:
>> * New patch.
>>
>>  drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c   | 12 ++++++++++++
>>  .../staging/media/rockchip/vpu/rockchip_vpu_drv.c    |  1 +
>>  drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h |  1 +
>>  3 files changed, 14 insertions(+)
>>
>> diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
>> index 2b3689968ef4..341f8d69c33d 100644
>> --- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
>> +++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
>> @@ -175,3 +175,15 @@ const struct rockchip_vpu_variant rk3399_vpu_variant = {
>>  	.clk_names = {"aclk", "hclk"},
>>  	.num_clocks = 2
>>  };
>> +
>> +const struct rockchip_vpu_variant rk3328_vpu_variant = {
>> +	.dec_offset = 0x400,
>> +	.dec_fmts = rk3399_vpu_dec_fmts,
>> +	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
>> +	.codec = RK_VPU_MPEG2_DECODER,
>> +	.codec_ops = rk3399_vpu_codec_ops,
>> +	.vdpu_irq = rk3399_vdpu_irq,
>> +	.init = rk3399_vpu_hw_init,
>> +	.clk_names = {"aclk", "hclk"},
>> +	.num_clocks = 2
>> +};
>> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
>> index b94ff97451db..2e22009b6583 100644
>> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
>> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
>> @@ -419,6 +419,7 @@ static const struct v4l2_file_operations rockchip_vpu_fops = {
>>  
>>  static const struct of_device_id of_rockchip_vpu_match[] = {
>>  	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
>> +	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
> This new compatible string should be documented in
> Documentation/devicetree/bindings/media/rockchip-vpu.txt as well.
>
> I'll take patches 1-15 and drop this one. This patch can be merged once
> the bindings file is updated as well.

Looks like the bindings patch did not get picked for v6 :-)

I am a bit unclear on how to handle patch submission that covers multiple subtrees.
Should I send a single series including three patches: bindings update, this patch and device tree update?
Or is a series with only bindings update and this patch preferred?

Regards,
Jonas

>
> Regards,
>
> 	Hans
>
>>  	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
>>  	{ /* sentinel */ }
>>  };
>> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
>> index 6cecb528f994..3d6b97af90fb 100644
>> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
>> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
>> @@ -79,6 +79,7 @@ enum rockchip_vpu_enc_fmt {
>>  };
>>  
>>  extern const struct rockchip_vpu_variant rk3399_vpu_variant;
>> +extern const struct rockchip_vpu_variant rk3328_vpu_variant;
>>  extern const struct rockchip_vpu_variant rk3288_vpu_variant;
>>  
>>  void rockchip_vpu_watchdog(struct work_struct *work);
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
