Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D688FBDB0
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 02:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4cdTvryAj8FE0S4h1FtjTykHnTxIUV3JfDnjvJp1us=; b=GIrPW/TjCfhsvY
	AV09rWR1fC5VZJckXfCN0tt/2Srr9kBU0TKTXJSdJs9wwjV0iS7ylGF8V2qt/Ql4AaM5w7ZFIoBDi
	MYjc7yXu3KxajgZcHunlsroJaDEu/hRwv4ok8vblAG2mHENsu0ZsZLmsUDzy2rgUs6tFFp5cJ7Qzj
	Fh5TrU1EvPZd/IFIig4IaS103NbnviXty4sC+gLhHN9vtMq1avhYztkmWxDTJ1WWxtG7TGgsw3egn
	roHdCDUVO1eWHhDyrlm6oMCxlGqGbEHkpFnDuRbIHSbIGu3rC5uieQOwv3aV9P8EjUa72EIhXunkD
	lfje9vhT3gCI/0XSnqHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV4JS-0005Qz-KD; Thu, 14 Nov 2019 01:52:46 +0000
Received: from mail-eopbgr60041.outbound.protection.outlook.com ([40.107.6.41]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV4JN-0005NN-DF
 for linux-rockchip@lists.infradead.org; Thu, 14 Nov 2019 01:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaDefa/B7b8aDSlTAK8ytE4pUkkQEf1m6MydGTTJaVc=;
 b=zFaMZNyZqeTViD2AA1wOuuzs0jiZ0evtl0LJ55kzGvQDRv1rfjQAgFyajpzZOSUMHAD+pBRde/iCYWiCLlGd/CEkq/SebKTyBlAPpjFFRHfh2Djt7vvwdRq8MC1rN48Fma7WVJglsMz/EK7N81xHWW7mqb1E+4wFsUyRBC0vcns=
Received: from AM6PR08CA0011.eurprd08.prod.outlook.com (2603:10a6:20b:b2::23)
 by DB6PR08MB2631.eurprd08.prod.outlook.com (2603:10a6:6:23::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Thu, 14 Nov
 2019 01:52:37 +0000
Received: from AM5EUR03FT007.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::208) by AM6PR08CA0011.outlook.office365.com
 (2603:10a6:20b:b2::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23 via Frontend
 Transport; Thu, 14 Nov 2019 01:52:36 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT007.mail.protection.outlook.com (10.152.16.145) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23 via Frontend Transport; Thu, 14 Nov 2019 01:52:36 +0000
Received: ("Tessian outbound 081de437afc7:v33");
 Thu, 14 Nov 2019 01:52:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b61edcd588a44897
X-CR-MTA-TID: 64aa7808
Received: from 14fd57746287.2 (cr-mta-lb-1.cr-mta-net [104.47.12.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 2325B6D5-DCC2-4E87-A59D-9CC5EE412737.1; 
 Thu, 14 Nov 2019 01:52:27 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2058.outbound.protection.outlook.com [104.47.12.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 14fd57746287.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 14 Nov 2019 01:52:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ok3lthLvf4cobTLxumSB0EDsPrCMitQ7Xbego3YLIqv6s5iqIYx4t+Unj9j4q+tSuEX/yHP5TNDE/EuqSpDq411hYxn4jtRns86+hoZuEh94IVAgOt3IQ5/gTokGI/tRcHzfkeA6IerCu2fDFEQ/goFgZSFfvIcl5Sf3ATNRX0tNdcjUQ76kaKQJeyLtKmcIZI9xo9CiHvToe8P4LFCYQaDCArfnF0Us6oR2r+vNhViSad45uN+wdJja6YlnSSS7cnLfjF6gU9QEQVclOZA67Jfcpb1HJCHfZbwuGbWaczbIaTRlxH4qvV9AZSc6ta+mzdN+H1CfIGvOnL3ZxL8i1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaDefa/B7b8aDSlTAK8ytE4pUkkQEf1m6MydGTTJaVc=;
 b=ibPSxOLyN7l/rHkW/5iVHW5epFDBxQSP9BSY0rSZUj2CXF14BANUEYy23xuvV4sFLPCwlHMtrVBuf7JY6E0VGnMB8gT4OeUFD9wupvZg5yxF945j+05LY0MndVcKeClqq0Xnbj/rnWK9o/OYpIwofoykBWc7FknWmoOtFTgg8dsOVsjEUxW0yhJiTcDY8HKTsWQd9o/rjk1fU+0yh0DBn+EN/iBMM1eXuZ7XL25g4So/GeCYoGwRtCoLnaZshZFyylbuZz4Sl7k0GSTbdz9IU4R9FGoX5TYBTi6Izxp+Y0Z3VTx6atf7DUEuhxMg/S2FrhKjMwRXYh7TnfwtSTRafQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaDefa/B7b8aDSlTAK8ytE4pUkkQEf1m6MydGTTJaVc=;
 b=zFaMZNyZqeTViD2AA1wOuuzs0jiZ0evtl0LJ55kzGvQDRv1rfjQAgFyajpzZOSUMHAD+pBRde/iCYWiCLlGd/CEkq/SebKTyBlAPpjFFRHfh2Djt7vvwdRq8MC1rN48Fma7WVJglsMz/EK7N81xHWW7mqb1E+4wFsUyRBC0vcns=
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com (10.255.159.31) by
 VE1PR08MB4784.eurprd08.prod.outlook.com (10.255.115.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Thu, 14 Nov 2019 01:52:26 +0000
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a809:417a:faf3:61a7]) by VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a809:417a:faf3:61a7%6]) with mapi id 15.20.2451.023; Thu, 14 Nov 2019
 01:52:26 +0000
From: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Topic: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Index: AQHVk1z8xHY+gDfYy0i/iDKbshedr6eBdzAAgAbusQCAAKGHAIAA7isA
Date: Thu, 14 Nov 2019 01:52:25 +0000
Message-ID: <20191114015220.GA16456@jamwan02-TSP300>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-4-andrzej.p@collabora.com>
 <20191108160954.GA17321@arm.com> <20191113020146.GB2746@jamwan02-TSP300>
 <20191113113954.GN23790@phenom.ffwll.local>
In-Reply-To: <20191113113954.GN23790@phenom.ffwll.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [113.29.88.7]
x-clientproxiedby: LO2P123CA0005.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::17) To VE1PR08MB5006.eurprd08.prod.outlook.com
 (2603:10a6:803:113::31)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fdbe528f-61d8-4be7-5d4d-08d768a55318
X-MS-TrafficTypeDiagnostic: VE1PR08MB4784:|VE1PR08MB4784:|DB6PR08MB2631:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR08MB26310DD5680DE3010443EBABB3710@DB6PR08MB2631.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 02213C82F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(199004)(189003)(53754006)(1076003)(7416002)(33716001)(14454004)(478600001)(5660300002)(966005)(6306002)(256004)(9686003)(14444005)(58126008)(6486002)(316002)(229853002)(305945005)(33656002)(7736002)(6436002)(6512007)(99286004)(8936002)(54906003)(4326008)(81166006)(52116002)(81156014)(76176011)(6246003)(8676002)(6116002)(25786009)(386003)(6916009)(2906002)(26005)(6506007)(3846002)(186003)(11346002)(486006)(86362001)(446003)(476003)(102836004)(71200400001)(71190400001)(66476007)(55236004)(66946007)(66556008)(66066001)(64756008)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4784;
 H:VE1PR08MB5006.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: SXuJOfwUsKY/WM/KoiEnt56PF0njBU8dJzkpT72DG4PfOepTT3C0GthuTBCt/5WUqkvMHz0GPZxQtcJuM5GccrmmWtxVUVXPfkGsRgS4qUKnGKx+A/nnAOYx67TG7moHbzQI8aQJ0vSQ8+VsZ1q0v75s/S53C8dPF/qM0BfAd394T3wTQs/nzubc28Na5aJeaHJDtg0X0N3tA3sTAWvfdp5PF6zBq1jSvBJuch25DKFQMVO6ftHuhPhAOcCA5pqybNelhu4hi12lGfSaHbr0DfksUxZD2+BNyUE5II78lp895kwz2MoHQnetkBW1McDNNPhEtXKWMraF+G2B3qY3y+YXhlxWeykLK7JKFibhEjJBz11Qk7vLPxb5K8qKKuwqJOpmgLqH8JXpJ0XddMcO3qb5xQsVvrXohWP1WtzlmX42dINqgnB00pJXFwsj/N7/qQ2bOSAmnePV6fasVHjVU7bmwQZmAbGdhjj6iosG8uw=
Content-ID: <3ADD614D554ECD48A0A061B62474F6DE@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4784
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT007.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(39860400002)(396003)(376002)(346002)(136003)(1110001)(339900001)(53754006)(189003)(199004)(6306002)(6246003)(81166006)(33716001)(316002)(105606002)(70206006)(58126008)(6116002)(70586007)(3846002)(356004)(76176011)(2906002)(76130400001)(186003)(26005)(102836004)(6506007)(386003)(8746002)(8676002)(1076003)(8936002)(486006)(5660300002)(9686003)(6512007)(22756006)(6862004)(229853002)(81156014)(4326008)(6486002)(336012)(50466002)(966005)(25786009)(26826003)(305945005)(86362001)(478600001)(14454004)(99286004)(33656002)(54906003)(36906005)(66066001)(47776003)(23756003)(126002)(476003)(11346002)(14444005)(7736002)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR08MB2631;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e62a3690-6ba3-45a0-34cf-08d768a54c64
NoDisclaimer: True
X-Forefront-PRVS: 02213C82F8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dtMuU2QMa+mLtOC260k334vypaUvSp+nzuKUc/C4UFI+93JOk/uTQ4QW8o7hrJoUNp5Q51Ly8+dRqUp7mMS/FmUw635gsFhIpwxlcxvbDuzvkCPUke0V/68CtzkDNx8/J+2d3kSG91kV6Q/UTTlqN7qtC1adgWMqSpJBX/AywUJPpFa6nmSkyMn6s5JLCoTQCs5QwuU3SdF72XTZ7qgG32mgEux3Ax8zmArt4uqqdDm4j2xDJGXf37pgTTPfwIhmoADPv2it9C40BILpiVymB4oh8N5NsX93yy+GyLwfRI8hoCu9DWTynJqga/HNxf5rvxNcncCgKKdm8EmJxNa23CoS3H/+rsx57idpWI0I52ZgUJPFcKv+QT9hOVENb6mkL8bx5IDmwDCRBahbv2RX6bDbuMmciX3H4OTMtSEJ4AKcuDvGaCbTlNAcb72sV21qBY4st04wKkb2mJvTOlAQwhcVI6nHEYdVPYaaG8CBuHY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2019 01:52:36.8402 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fdbe528f-61d8-4be7-5d4d-08d768a55318
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2631
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_175241_693746_CFB99750 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.41 listed in list.dnswl.org]
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
Cc: nd <nd@arm.com>, Mihail Atanassov <Mihail.Atanassov@arm.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Ayan Halder <Ayan.Halder@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <Brian.Starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 12:39:54PM +0100, Daniel Vetter wrote:
> On Wed, Nov 13, 2019 at 02:01:53AM +0000, james qian wang (Arm Technology China) wrote:
> > On Fri, Nov 08, 2019 at 04:09:54PM +0000, Ayan Halder wrote:
> > > On Mon, Nov 04, 2019 at 11:12:27PM +0100, Andrzej Pietrasiewicz wrote:
> > > > There are afbc helpers available.
> > > > 
> > > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > > > ---
> > > >  .../arm/display/komeda/komeda_format_caps.h   |  1 -
> > > >  .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
> > > >  2 files changed, 17 insertions(+), 28 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > index 32273cf18f7c..607eea80e60c 100644
> > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > @@ -33,7 +33,6 @@
> > > >  
> > > >  #define AFBC_TH_LAYOUT_ALIGNMENT	8
> > > >  #define AFBC_HEADER_SIZE		16
> > > > -#define AFBC_SUPERBLK_ALIGNMENT		128
> > > >  #define AFBC_SUPERBLK_PIXELS		256
> > > >  #define AFBC_BODY_START_ALIGNMENT	1024
> > > >  #define AFBC_TH_BODY_START_ALIGNMENT	4096
> > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > index 1b01a625f40e..e9c87551a5b8 100644
> > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > @@ -4,6 +4,7 @@
> > > >   * Author: James.Qian.Wang <james.qian.wang@arm.com>
> > > >   *
> > > >   */
> > > > +#include <drm/drm_afbc.h>
> > > >  #include <drm/drm_device.h>
> > > >  #include <drm/drm_fb_cma_helper.h>
> > > >  #include <drm/drm_gem.h>
> > > > @@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > >  	struct drm_framebuffer *fb = &kfb->base;
> > > >  	const struct drm_format_info *info = fb->format;
> > > >  	struct drm_gem_object *obj;
> > > > -	u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
> > > > -	u64 min_size;
> > > > +	u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
> > > >  
> > > >  	obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
> > > >  	if (!obj) {
> > > > @@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > >  		return -ENOENT;
> > > >  	}
> > > >  
> > > > -	switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > > -	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > > -		alignment_w = 32;
> > > > -		alignment_h = 8;
> > > > -		break;
> > > > -	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > > -		alignment_w = 16;
> > > > -		alignment_h = 16;
> > > > -		break;
> > > > -	default:
> > > > -		WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> > > > -		     fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> > > > -		break;
> > > > +	if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
> > > > +		return -EINVAL;
> > > > +
> > > > +	if ((alignment_w != 16 || alignment_h != 16) &&
> > > > +	    (alignment_w != 32 || alignment_h != 8)) {
> > > > +		DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
> > > > +			      alignment_w, alignment_h);
> > > > +
> > > > +		return -EINVAL;
> > > To be honest, the previous code looks much more readable
> > > >  	}
> > > >  
> > > >  	/* tiled header afbc */
> > > > @@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > >  		goto check_failed;
> > > >  	}
> > > >  
> > > > -	n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
> > > > -	kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
> > > > -				    alignment_header);
> > > > -
> > > >  	bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
> > > > -	kfb->afbc_size = kfb->offset_payload + n_blocks *
> > > > -			 ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
> > > > -			       AFBC_SUPERBLK_ALIGNMENT);
> > > > -	min_size = kfb->afbc_size + fb->offsets[0];
> > > > -	if (min_size > obj->size) {
> > > > -		DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
> > > > -			      obj->size, min_size);
> > > We need kfb->offset_payload and kfb->afbc_size to set some registers
> > > in d71_layer_update(). At this moment I feel like punching myself for
> > > making the suggestion to consider abstracting some of the komeda's afbc
> > > checks. To me it does not look like komeda(in the current shape) can take
> > > much advantage of the generic _afbc_fb_check() function (as was suggested
> > > previously by Danvet).
> > > 
> > > However, I will let james.qian.wang@arm.com,
> > > Mihail.Atanassov@arm.com, Ben.Davis@arm.com comment here to see if
> > > there could be a way of abstracting the afbc bits from komeda.
> > >
> > 
> > Hi all:
> > 
> > Since the current generic drm_afbc helpers only support afbc_1.1, but
> > komeda needs support both afbc1.1/1.2, so I think we can:
> > - Add afbc1.2 support to drm afbc helpers.
> > - for the afbc_payload_offset, can we add this member to
> >   drm_framebuffer ?
> > - The aligned_w/h are important for afbc, so can we have them in
> >   drm_framebuffer ?  
> 
> How expensive is it to recompute these from a struct drm_framebuffer?
> 
> I'd just go with one function which computes all these derived values, and
> stuffs them into a struct drm_afbc. Then drivers call that once or so.
>

A struct drm_afbc, good idea, I like it. :-)

and we can compute it when do the afbc size check like 

  drm_afbc_check_fb_size(..., &komeda_fb->drm_afbc);

Thanks.
James

> For reworking drm_framebuffer itself I think it's probably a bit too
> earlier. And if we do it, we should maybe go a bit more bold, aiming to
> property-fy all the framebuffer settings, maybe even making it extensible,
> and have drivers handle a corresponding drm_framebuffer_state.
> 
> A third option would be to create a drm_afbc_framebuffer which embeds
> drm_framebuffer and which drivers would need to use. But also feels a bit
> like too much churn. Recomputing should be quick enough and much easier.
> -Daniel
> 
> > 
> > Thanks
> > James
> > 
> > > Thanks anyways for taking a stab at this.
> > > -Ayan
> > > > +
> > > > +	if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
> > > > +				    mode_cmd->width, mode_cmd->height,
> > > > +				    alignment_w, alignment_h,
> > > > +				    obj->size, mode_cmd->offsets[0],
> > > > +				    AFBC_SUPERBLK_ALIGNMENT))
> > > >  		goto check_failed;
> > > > -	}
> > > >  
> > > >  	fb->obj[0] = obj;
> > > >  	return 0;
> > > > -- 
> > > > 2.17.1
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
