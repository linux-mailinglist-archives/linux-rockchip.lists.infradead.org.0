Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD4CFA231
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 03:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuPjSZYs/CkGR5oTFSy/pLR1/1qxIid3a7Pxz7d1nMs=; b=Sio+zP8zjMlR2d
	30MAtYqpjCXxvAJUF6w4Ce6R1sSlvdBjZs5PpEW5Zcqwt5yOirSfPdyE45ex2hcpA7riXbn8E106E
	ecmJdBrhMGW0dSLVB2drthCnqdDPi9SNUVPUOBnBZDtpaQpaqPi4qCFBHTDZNaNPGX+oQ4BhHVUuk
	+MXm5pnYRqoiVUJUP4+QizFncfBvmbtJtgbG5d71J3/adSqt/OlLaU07daPY50lkM1Km1Vllj1I9/
	rdw5guI1t6xS4A55Ya8EAgC44+EKZO7xKk8zu7X/EHPlffQPKnHoZrP+NCWJZgEFB1OzfQ/ivD0U8
	Y6k2XTuanR9BHyPSlcuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUhzJ-0003Hn-C3; Wed, 13 Nov 2019 02:02:29 +0000
Received: from mail-eopbgr130051.outbound.protection.outlook.com
 ([40.107.13.51] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUhz2-0002pC-OA
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 02:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReV0oIBM9ymRPkA/8hrIZWWDYT8C7AGjReD22AbeNOY=;
 b=68bw/xZ6RiA6w+J+s6sSI9xhEIxBDb3WlYV4TQU7JFKEopJKs+VEsCyd/PGt4ll4ijxN35DzBQIsZxU8rrHRhhmavR0WIic6dEbrbuzIyDianrktzx8IpE2pjPtotK+c8MUPLJMJN7KI8Uuq8eDAzOczbdfcj1HRYdMJpXR3iOU=
Received: from VI1PR08CA0110.eurprd08.prod.outlook.com (2603:10a6:800:d4::12)
 by VI1PR0801MB2013.eurprd08.prod.outlook.com (2603:10a6:800:8a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.25; Wed, 13 Nov
 2019 02:02:05 +0000
Received: from VE1EUR03FT014.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by VI1PR08CA0110.outlook.office365.com
 (2603:10a6:800:d4::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2451.22 via Frontend
 Transport; Wed, 13 Nov 2019 02:02:05 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT014.mail.protection.outlook.com (10.152.19.38) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2430.21 via Frontend Transport; Wed, 13 Nov 2019 02:02:05 +0000
Received: ("Tessian outbound 081de437afc7:v33");
 Wed, 13 Nov 2019 02:02:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a01a9dbb12ba88d0
X-CR-MTA-TID: 64aa7808
Received: from e41616ca4418.2 (cr-mta-lb-1.cr-mta-net [104.47.9.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 1A5E90D1-DC72-4FEA-B0B3-890ABA1C73A2.1; 
 Wed, 13 Nov 2019 02:01:57 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2051.outbound.protection.outlook.com [104.47.9.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e41616ca4418.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 13 Nov 2019 02:01:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mw2oz2mj7xLXP48pXjh+NIn3KeARTBg8Q9IQBh3Dgek+UJDQI0jxLGTQ7+9mxxW9Ooe9SMIEwC+BV6PHYP8hcuwbd6rXK6V+JN97NjKy4T0YPAPYb8hRXxYPgh5fU6a5XqurhI6+5iFx05KFokMgeSrLCuJptC7S4llgUWIg/F1OB2Eh6UV/hYuXdcdcw93cexdIGKRUvFOG3a6cpL8e4dMZaNoNTFXmp2P9Q5IGKPZ3VHAlKA7fpIDh10bmCX6qOKMt72YU4r+QPihk0vpXdasnfnoTxzKD5HURalTSzTdHFbOXsUzMBeSUVmGYZDt2a9d++xZF59BXSuW2j+O7Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReV0oIBM9ymRPkA/8hrIZWWDYT8C7AGjReD22AbeNOY=;
 b=fonjGn7/+s9sFxIuSR8aVeDKR+4MluadMFziPbbAOD0KxUDYB0Pg+7PIqFx5xrHXihjUhvHRxGerxPKA2qAwp7f4jaW5Gm48/8/Ota2zMponBu6QURSNGVl4qA6A8CrZZ94Ij1IjHLSFJN7BXLlko2IuGOSmcAp7y7TcUWi3okb02HLKCI8rvr6XGf/VSYkIK/jpRCyFkn1YK9IyWPI1N+9Hh2OPnjsAve34AdUC1FE3EKzjeFoH6bSecl9kj9+R7tS3dmwUFkeC0vVpGN/GhxZHD3Muu3BKT3+Gdyv2VEuJhH3CUvp/9y9TCfO/KGXDXf4B3nc9qifcCwjJvtKcqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReV0oIBM9ymRPkA/8hrIZWWDYT8C7AGjReD22AbeNOY=;
 b=68bw/xZ6RiA6w+J+s6sSI9xhEIxBDb3WlYV4TQU7JFKEopJKs+VEsCyd/PGt4ll4ijxN35DzBQIsZxU8rrHRhhmavR0WIic6dEbrbuzIyDianrktzx8IpE2pjPtotK+c8MUPLJMJN7KI8Uuq8eDAzOczbdfcj1HRYdMJpXR3iOU=
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com (10.255.159.31) by
 VE1PR08MB5038.eurprd08.prod.outlook.com (10.255.159.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Wed, 13 Nov 2019 02:01:53 +0000
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a809:417a:faf3:61a7]) by VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a809:417a:faf3:61a7%6]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 02:01:53 +0000
From: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
To: Ayan Halder <Ayan.Halder@arm.com>
Subject: Re: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Topic: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Index: AQHVk1z8xHY+gDfYy0i/iDKbshedr6eBdzAAgAbusQA=
Date: Wed, 13 Nov 2019 02:01:53 +0000
Message-ID: <20191113020146.GB2746@jamwan02-TSP300>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-4-andrzej.p@collabora.com>
 <20191108160954.GA17321@arm.com>
In-Reply-To: <20191108160954.GA17321@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [113.29.88.7]
x-clientproxiedby: HK0PR01CA0027.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::15) To VE1PR08MB5006.eurprd08.prod.outlook.com
 (2603:10a6:803:113::31)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ae628df1-a7fa-407b-5f14-08d767dd7bcc
X-MS-TrafficTypeDiagnostic: VE1PR08MB5038:|VE1PR08MB5038:|VI1PR0801MB2013:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB2013B337A80F254E60B45059B3760@VI1PR0801MB2013.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0220D4B98D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(346002)(39860400002)(136003)(366004)(376002)(396003)(189003)(199004)(53754006)(6512007)(58126008)(26005)(6246003)(476003)(9686003)(3846002)(6116002)(305945005)(6436002)(7736002)(14454004)(81156014)(5660300002)(229853002)(86362001)(54906003)(316002)(8676002)(66066001)(486006)(33656002)(81166006)(64756008)(66946007)(25786009)(71190400001)(66446008)(66556008)(66476007)(6486002)(71200400001)(2906002)(446003)(478600001)(1076003)(4326008)(33716001)(6506007)(52116002)(386003)(76176011)(186003)(102836004)(55236004)(6636002)(8936002)(7416002)(6862004)(99286004)(14444005)(256004)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB5038;
 H:VE1PR08MB5006.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: +xDxWWhoQh/ZpMk+rdJ91XMrsk9l+nzwXg78NvCrwFU+Z85j7jz6G5blPgkCxePPC7IcJMhskcazKjoFWP65UsRQozCinq8e1jl8j+S94/figs/XW03mgLA7T+Oa/rpW/y88NEM/P+fKgII78HkeiAlqlpMammQHDUXe0XjenMCLRpVsaCToaSb4WZCaagZU7X49aitLPOsG0Y0mvm5p0/2l5AbX4EGTtIPZKlvYlGLqcwlti7xKu1TrKTymkEOEs1RaNRuc1cidXpHCCiRQ4zCUL20cXjytnZjhbvvshiBgdoXRVtHB4c2SRO+bNCUJ2srOE7h0XLmA4f21HatQI4tFwCzctDZaQxZVdUkDvIuOToY2Hlj7+9qq2v+It1SMPeGcG2bl4uCw1u47OJhaIHdBq/5KyRaR1/pcAydmPzMSz5XLg+GoBJWgPsS6Bg8h
Content-ID: <8F468F222A27164DAFB3A0A17DD7105F@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5038
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT014.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(136003)(376002)(396003)(39860400002)(346002)(1110001)(339900001)(189003)(53754006)(199004)(81166006)(8746002)(356004)(14444005)(25786009)(476003)(11346002)(33716001)(2906002)(229853002)(486006)(6116002)(8936002)(3846002)(8676002)(47776003)(66066001)(126002)(5660300002)(81156014)(54906003)(22756006)(36906005)(23756003)(76130400001)(58126008)(316002)(446003)(70586007)(102836004)(70206006)(86362001)(33656002)(6506007)(76176011)(386003)(99286004)(1076003)(50466002)(336012)(186003)(26826003)(14454004)(478600001)(26005)(105606002)(305945005)(6246003)(4326008)(7736002)(6862004)(6512007)(6486002)(9686003)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB2013;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d0ce9162-372f-4263-5b77-08d767dd746e
NoDisclaimer: True
X-Forefront-PRVS: 0220D4B98D
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jlc60Gg7psQ0LLvZzCnklJvumnRwPiQd0xwghm51TRpMZsBdsR2IO7idH+ktrum2V9zEQj7/D7KaPQSgvq07Vwp/ZN+CS+/RUZj5krhGxqeUWDXveESrfYyM2Pucm8VDJ9eHr0cSyPar6U5EGfNZWsVWVG3T42F4A7G3ej0AKdShqwhsFZ7c/WFDH4mxStA47s6/okCbFZO6pnCfTeYpcLoD9csfZp2NeXEqnhPH+Vmx2bpNvlfdoXIm56rI5SyCUXV9g8c4x/ZCaKQhgGPY9oFjXdgEaTjoCZZOgUQwy7rpDaIMMYKIBSCV3AuaYmev/AO2DeJNBYA4kfcyLfi40MP3RD92+APhsnAIkMkeTmLkCKWATg55h2keK4D9izgfAOf4ecwv4XeUVdv6Kq720CRJFdOqe1KMcRC5HU5Y7l8SUkKSvFgYQ9i3Irk7a7GU
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2019 02:02:05.7528 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ae628df1-a7fa-407b-5f14-08d767dd7bcc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB2013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_180213_007613_31A2BBD0 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nd <nd@arm.com>, "kernel@collabora.com" <kernel@collabora.com>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Mihail Atanassov <Mihail.Atanassov@arm.com>,
 Sean Paul <sean@poorly.run>, Brian Starkey <Brian.Starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 04:09:54PM +0000, Ayan Halder wrote:
> On Mon, Nov 04, 2019 at 11:12:27PM +0100, Andrzej Pietrasiewicz wrote:
> > There are afbc helpers available.
> > 
> > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > ---
> >  .../arm/display/komeda/komeda_format_caps.h   |  1 -
> >  .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
> >  2 files changed, 17 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > index 32273cf18f7c..607eea80e60c 100644
> > --- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > @@ -33,7 +33,6 @@
> >  
> >  #define AFBC_TH_LAYOUT_ALIGNMENT	8
> >  #define AFBC_HEADER_SIZE		16
> > -#define AFBC_SUPERBLK_ALIGNMENT		128
> >  #define AFBC_SUPERBLK_PIXELS		256
> >  #define AFBC_BODY_START_ALIGNMENT	1024
> >  #define AFBC_TH_BODY_START_ALIGNMENT	4096
> > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > index 1b01a625f40e..e9c87551a5b8 100644
> > --- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > @@ -4,6 +4,7 @@
> >   * Author: James.Qian.Wang <james.qian.wang@arm.com>
> >   *
> >   */
> > +#include <drm/drm_afbc.h>
> >  #include <drm/drm_device.h>
> >  #include <drm/drm_fb_cma_helper.h>
> >  #include <drm/drm_gem.h>
> > @@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> >  	struct drm_framebuffer *fb = &kfb->base;
> >  	const struct drm_format_info *info = fb->format;
> >  	struct drm_gem_object *obj;
> > -	u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
> > -	u64 min_size;
> > +	u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
> >  
> >  	obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
> >  	if (!obj) {
> > @@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> >  		return -ENOENT;
> >  	}
> >  
> > -	switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > -	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > -		alignment_w = 32;
> > -		alignment_h = 8;
> > -		break;
> > -	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > -		alignment_w = 16;
> > -		alignment_h = 16;
> > -		break;
> > -	default:
> > -		WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> > -		     fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> > -		break;
> > +	if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
> > +		return -EINVAL;
> > +
> > +	if ((alignment_w != 16 || alignment_h != 16) &&
> > +	    (alignment_w != 32 || alignment_h != 8)) {
> > +		DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
> > +			      alignment_w, alignment_h);
> > +
> > +		return -EINVAL;
> To be honest, the previous code looks much more readable
> >  	}
> >  
> >  	/* tiled header afbc */
> > @@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> >  		goto check_failed;
> >  	}
> >  
> > -	n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
> > -	kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
> > -				    alignment_header);
> > -
> >  	bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
> > -	kfb->afbc_size = kfb->offset_payload + n_blocks *
> > -			 ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
> > -			       AFBC_SUPERBLK_ALIGNMENT);
> > -	min_size = kfb->afbc_size + fb->offsets[0];
> > -	if (min_size > obj->size) {
> > -		DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
> > -			      obj->size, min_size);
> We need kfb->offset_payload and kfb->afbc_size to set some registers
> in d71_layer_update(). At this moment I feel like punching myself for
> making the suggestion to consider abstracting some of the komeda's afbc
> checks. To me it does not look like komeda(in the current shape) can take
> much advantage of the generic _afbc_fb_check() function (as was suggested
> previously by Danvet).
> 
> However, I will let james.qian.wang@arm.com,
> Mihail.Atanassov@arm.com, Ben.Davis@arm.com comment here to see if
> there could be a way of abstracting the afbc bits from komeda.
>

Hi all:

Since the current generic drm_afbc helpers only support afbc_1.1, but
komeda needs support both afbc1.1/1.2, so I think we can:
- Add afbc1.2 support to drm afbc helpers.
- for the afbc_payload_offset, can we add this member to
  drm_framebuffer ?
- The aligned_w/h are important for afbc, so can we have them in
  drm_framebuffer ?  

Thanks
James

> Thanks anyways for taking a stab at this.
> -Ayan
> > +
> > +	if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
> > +				    mode_cmd->width, mode_cmd->height,
> > +				    alignment_w, alignment_h,
> > +				    obj->size, mode_cmd->offsets[0],
> > +				    AFBC_SUPERBLK_ALIGNMENT))
> >  		goto check_failed;
> > -	}
> >  
> >  	fb->obj[0] = obj;
> >  	return 0;
> > -- 
> > 2.17.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
