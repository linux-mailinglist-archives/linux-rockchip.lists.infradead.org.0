Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025C3F43CC
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 10:46:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zSjKUWSOFDSDU/fXDaIVcdDCqHDpI5gjR2btF+Nz3w=; b=oe0B/dQ7kakqjY
	lrLdeIYs5qWopNx0OQWdr17xqdEx4t4tlZAsgodEVVegVkF6e7+WkGHzu3MRVnbf954Qc5koBNqOQ
	nYUikgaCtZsmBKqUzoBOevcIsDSdCC3MXIMcTt//JtQXKf8wkkbtV2oNkZ6Vva1I+4wVufDUXM2al
	3dulRxhxIy4wiW2v66o3yMMmTmPpLguvztU/rbLp4AqABkbvLeIRp6+HOr4yEuWQ4U3SKEJLGWfnY
	8rorvGsKcQ+vz2h+U3gdBQTNabG5MdvnnqB2wuZhf1oFHQd9+ANQfyfvgouAE6Tv+zYqjggCmAO/Q
	xWmWsk0SJr5H6F2O48KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0qf-0001ey-H9; Fri, 08 Nov 2019 09:46:33 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0qZ-0001cP-4c
 for linux-rockchip@lists.infradead.org; Fri, 08 Nov 2019 09:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sidRalFg5EBz9n1KfOz5u+nnduKfQpnYyMRTz7e02gU=;
 b=8jNNi5AvoiGdPpusUugX2B6fLqQV5I+NFTt08yDExjI6thbFHSW92qgRzpj5N2bZ3RwXqxL7rxWCNMfqIzSWf0T4MaXt+YpkF8xcJ+RK+5EaDKbHxZtd9RducSrpfpqTVFkeyeWB9kjT1Hs5MEApt2sY7k88TNiMGkxcY/FRcvU=
Received: from VI1PR08CA0218.eurprd08.prod.outlook.com (2603:10a6:802:15::27)
 by VI1PR0802MB2416.eurprd08.prod.outlook.com (2603:10a6:800:bb::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.24; Fri, 8 Nov
 2019 09:46:22 +0000
Received: from VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by VI1PR08CA0218.outlook.office365.com
 (2603:10a6:802:15::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.23 via Frontend
 Transport; Fri, 8 Nov 2019 09:46:22 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT006.mail.protection.outlook.com (10.152.18.116) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Fri, 8 Nov 2019 09:46:22 +0000
Received: ("Tessian outbound 6481c7fa5a3c:v33");
 Fri, 08 Nov 2019 09:46:16 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7e66395cc7a8afcb
X-CR-MTA-TID: 64aa7808
Received: from 21c082c59466.2 (cr-mta-lb-1.cr-mta-net [104.47.0.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D999B228-FCBD-4190-AFF8-D47EC062FB22.1; 
 Fri, 08 Nov 2019 09:46:11 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2057.outbound.protection.outlook.com [104.47.0.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 21c082c59466.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 08 Nov 2019 09:46:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cLxWG7XNfI0G4F1j86D4IObjKIlH9xpBNdkiaXuFLeZW/jWGwzADM7SyjOR0Qp9tHCEZfZc8X9q2oPtAO+w+GsLjLJTZO9pgeWeFyONX/dUjy285lcohiGh8IRIANLTvf4C0WomGoZJK5liAhFS96vx23XXlgWpiXeBJRv3LFNTLT2eCfXyX4FExZhtWKrG0cg5aG9EMXbMnpXfMcCpYeYIc8uhmUpP9j7p7CNe7swvt9DtnazTCG3dJCj6POK21QndYJ206+Y4sr8s5tAZzifaO8MYs2NSgg+daFqWqByBvDnH2xSQVCAM0NVELDyhm2H1P3OvjvCtgB1vhn4chlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sidRalFg5EBz9n1KfOz5u+nnduKfQpnYyMRTz7e02gU=;
 b=AUthSCy+J/hAvQYbTgIcxpQxywbDibw80sWWuMz5Ufsut3J4VArzrfiiwcwmkmS8gIQCjd9PGvLeQqUu8i7YNl6iv3+N7JLcsnpmP/PARsR9wogW1zb3OI6rvUdRhwGgfUbBiKhRerZIlj3Ux2V2q+iYw+3S2UW0KXLVMGF2CviuwZq64O4odUgNC2bqoFTDhvtbjjWKXXmo4iZ/b7Dag7XoqRgOt5Q6ThwA2gJDWO51SMrymjVrMRxiZbZ/E/mRfEEWBr4ECBmQmJqAnlgIHb7DxZ5gLSW3tBSrfrobt705AN5XQoVd6zMNnwZTcdGwYhbmviYCT3hv+Wob2ywqqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sidRalFg5EBz9n1KfOz5u+nnduKfQpnYyMRTz7e02gU=;
 b=8jNNi5AvoiGdPpusUugX2B6fLqQV5I+NFTt08yDExjI6thbFHSW92qgRzpj5N2bZ3RwXqxL7rxWCNMfqIzSWf0T4MaXt+YpkF8xcJ+RK+5EaDKbHxZtd9RducSrpfpqTVFkeyeWB9kjT1Hs5MEApt2sY7k88TNiMGkxcY/FRcvU=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB3173.eurprd08.prod.outlook.com (52.135.167.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Fri, 8 Nov 2019 09:46:08 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::6804:f05f:47c0:d9e]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::6804:f05f:47c0:d9e%4]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 09:46:08 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Thread-Topic: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Thread-Index: AQHVk1z4dagGuzJ3bkuZ5c+Y7TNITKd9OjQAgAK+PICAAANcgIAABM6AgAAbpACAAO+3gA==
Date: Fri, 8 Nov 2019 09:46:08 +0000
Message-ID: <20191108094607.iy4evnixsiw7ogfu@DESKTOP-E1NTVVP.localdomain>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
 <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
 <20191107171959.esg2dh6dw6i2lfst@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uGDqS2ygHjmbTS0rjgYx0LJ9-hAmOvYqEoi7z4TSHY-rA@mail.gmail.com>
 <20191107174913.yme5kd6iva2kc7hw@DESKTOP-E1NTVVP.localdomain>
 <20191107192808.GS23790@phenom.ffwll.local>
In-Reply-To: <20191107192808.GS23790@phenom.ffwll.local>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.53]
x-clientproxiedby: CWLP123CA0078.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:401:5b::18) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c3150e8f-f5c9-4f33-e29e-08d764308379
X-MS-TrafficTypeDiagnostic: AM6PR08MB3173:|AM6PR08MB3173:|VI1PR0802MB2416:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0802MB2416EEED91B660B021D5B237F07B0@VI1PR0802MB2416.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0215D7173F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(366004)(396003)(39860400002)(51444003)(189003)(199004)(40434004)(81166006)(81156014)(7736002)(587094005)(478600001)(14454004)(229853002)(99286004)(25786009)(6916009)(52116002)(4326008)(186003)(3846002)(45080400002)(256004)(5024004)(54906003)(2906002)(316002)(966005)(8936002)(6306002)(26005)(66066001)(14444005)(71200400001)(446003)(476003)(66946007)(11346002)(102836004)(76176011)(386003)(64756008)(53546011)(66446008)(66556008)(7416002)(58126008)(6116002)(561944003)(66476007)(5660300002)(305945005)(44832011)(6512007)(9686003)(71190400001)(1076003)(6246003)(6486002)(6506007)(6436002)(8676002)(86362001)(486006)(30864003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3173;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: uxc7enum/GO/ezSNIopuhCNyIAFhkwUqZCvZnS5BYLe2C30hLJkYwjNHJN5Iw1uSAIxMwm08QhFIOH7ykN0XKsAyjpHoGMiL7pch7PhwSewkGaU2jGkZ5LtogdegfyMAHsj4mxvxGWaITMK9UFf7rdLrzs79QTIgoDmcdvdVPIzKOgvrsOSV6D/p7ZPwJln0RBPIyuwFmgcQbA+/rd8rD2XJEcLDWE1M3QGqBsVmj+MY8vnw50/7m9Z/td7Ouc7ytgYDyjbW7xQFf0Mz0AWj6DfFIBNDmKOCrqrwfPQIu+mGl0zxRmgQYsrghXAupQ+Y/iAYdz0ga+cEEBRmqxDNCbX3DdbTFMkqJjNglsxDGfP2iGmne73VUOEfmmdsuQ50TaTKMUNi0pxafvtmh61PqjVeTd0QMsnS2lmISmAa5dZU5STOeq/3hGZhxkfyIwAtOO+VKhwavrdNYRa+GzMh3zZUeAVcmtVmY6CQ2bc6BL0=
Content-ID: <2C15A1EBAA602148855A074DC3B99379@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3173
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(1110001)(339900001)(51444003)(199004)(40434004)(189003)(3846002)(26826003)(45080400002)(4326008)(229853002)(47776003)(966005)(99286004)(81156014)(81166006)(6862004)(8676002)(14444005)(8746002)(5024004)(478600001)(86362001)(6246003)(105606002)(561944003)(6512007)(9686003)(6306002)(70206006)(14454004)(6486002)(25786009)(76130400001)(7736002)(486006)(23756003)(126002)(26005)(36906005)(305945005)(102836004)(70586007)(1076003)(446003)(11346002)(316002)(76176011)(30864003)(53546011)(6506007)(386003)(476003)(6116002)(587094005)(66066001)(186003)(58126008)(336012)(2906002)(54906003)(22756006)(8936002)(50466002)(356004)(5660300002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2416;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: a003cc1c-52d0-4cca-5d97-08d764307afc
NoDisclaimer: True
X-Forefront-PRVS: 0215D7173F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xaEahoZNcch+rYqwhZ6HbDlEVJES5tv7EuPcmDTRqNkvcesxqE0x6WW6G2zKYpxCAfImYKhRjqevWQPomhXiJZN4Eh1Wd1j/Qf1o4PZgNqFCTpyF+Nw4cXG/zpNX+Wdx/IWnQfrVS9VsTmTrLCq8snVqugyBRO9EReq2dJVx7Ut7g9rO9GhNS3ao+gtPgbsTaW4q2UxksD0IZTsF9bCJg9wrRhK7t/7v1NDLwbeqts6o2/hMpfG60z432wptSDz7VU5U6kbzOm0kqjUV9ylyc6OTjtrSTnda5zjj6Iewnuf3Z2jsVwbUCP7aWo3Bc6ZWfEsP8uupA2jtgSnGvwkCdOVg7iT7tIWeBWEZUdtI0o2PXvRQ1VdqMlFFdUBWT3Y0OvlbG4U6SFQLifTJpSBKTYuTL5KNZ26xV2QK7DLvJxPc+wOlqp6OOhWfd62jA534UNs2gIzKCd9lA45P+LuTNqhdZ/PdKawBqdyGAUOw1eQ=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2019 09:46:22.1884 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c3150e8f-f5c9-4f33-e29e-08d764308379
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2416
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_014627_474369_ED0703B3 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: nd <nd@arm.com>, Ayan Halder <Ayan.Halder@arm.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Daniel Stone <daniels@collabora.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Mihail Atanassov <Mihail.Atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Daniel,

On Thu, Nov 07, 2019 at 08:28:08PM +0100, Daniel Vetter wrote:
> On Thu, Nov 07, 2019 at 05:49:14PM +0000, Brian Starkey wrote:
> > Hi Daniel,
> > 
> > On Thu, Nov 07, 2019 at 06:32:01PM +0100, Daniel Vetter wrote:
> > > On Thu, Nov 7, 2019 at 6:20 PM Brian Starkey <Brian.Starkey@arm.com> wrote:
> > > >
> > > > Hi Daniel,
> > > >
> > > > On Tue, Nov 05, 2019 at 11:26:36PM +0000, Daniel Stone wrote:
> > > > > Hi Andrzej,
> > > > > Thanks for taking this on! It's looking better than v1 for sure. A few
> > > > > things below:
> > > > >
> > > > > On Mon, 2019-11-04 at 23:12 +0100, Andrzej Pietrasiewicz wrote:
> > > > > > +bool drm_afbc_check_offset(struct drm_device *dev,
> > > > > > +                      const struct drm_mode_fb_cmd2 *mode_cmd)
> > > > > > +{
> > > > > > +   if (mode_cmd->offsets[0] != 0) {
> > > > > > +           DRM_DEBUG_KMS("AFBC buffers' plane offset should be
> > > > > > 0\n");
> > > > > > +           return false;
> > > > > > +   }
> > > > > > +
> > > > > > +   return true;
> > > > > > +}
> > > > > > +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
> > > > >
> > > > > Is this actually universally true? If the offset is sufficiently
> > > > > aligned for (e.g.) DMA transfers to succeed, is there any reason why it
> > > > > must be zero?
> > > > >
> > > > > > +bool drm_afbc_check_size_align(struct drm_device *dev,
> > > > > > +                          const struct drm_mode_fb_cmd2 *mode_cmd)
> > > > > > +{
> > > > > > +   switch (mode_cmd->modifier[0] &
> > > > > > AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > > > > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > > > > +           if ((mode_cmd->width % 16) || (mode_cmd->height % 16))
> > > > > > {
> > > > >
> > > > > This is a dealbreaker for many resolutions: for example, 1366x768 isn't
> > > > > cleanly divisible by 16 in width. So this means that we would have to
> > > > > either use a larger buffer and crop, or scale, or something.
> > > > >
> > > > > No userspace is prepared to align fb width/height to tile dimensions
> > > > > like this, so this check will basically fail everywhere.
> > > > >
> > > > > However, overallocation relative to the declared width/height isn't a
> > > > > problem at all. In order to deal with horizontal alignment, you simply
> > > > > need to ensure that the stride is a multiple of the tile width; for
> > > > > vertical arrangement, that the buffer is large enough to contain
> > > > > sufficient 'lines' to the next tile boundary.
> > > > >
> > > > > i.e. rather than checking width/height, you should check:
> > > > >   * fb_stride >= (ALIGN(fb_width, tile_width), bpp)
> > > > >   * buf_size >= fb_stride * ALIGN(fb_height, tile_height)
> > > >
> > > > Well, sort of.
> > > >
> > > > I agree with you that for horizontal padding, we can indeed use pitch.
> > > >
> > > > However, the AFBC decoder(s) need to know exactly what the total
> > > > _allocated_ size in pixels of the buffer is - as this influences the
> > > > header size, and we need to know the header size to know where it ends
> > > > and the body begins.
> > > >
> > > > I see a couple of possible ways forwards:
> > > >
> > > >  - Keep it as-is. The restrictive checks ensure that there's no
> > > >    ambiguity and we use the fb width/height to determine the real
> > > >    allocated width/height. Userspace needs to be AFBC-aware and set up
> > > >    plane cropping to handle the alignment differences.
> > > >
> > > >  - Use pitch to determine the "real" width, and internally in the
> > > >    kernel align height up to the next alignment boundary. This works
> > > >    OK, so long as there's no additional padding at the bottom of the
> > > >    buffer. This would work, but I can't figure a way to check/enforce
> > > >    that there's no additional padding at the bottom.
> > > >
> > > >  - Something else...
> > > >
> > > > The checks as-implemented were deliberately conservative, and don't
> > > > preclude doing some relaxation in the future.
> > > >
> > > > On Android, gralloc is used to store the "real" allocated width/height
> > > > and this is used to set up the DRM API appropriately.
> > > 
> > > Fake stride + real visible h/w in the drmfb. Because that's how it
> > > works with all the tiled formats already, and expecting userspace to
> > > fudge this all correctly seems very backwards to me. In a way we had
> > > that entire fake stride discussion already for the block size format
> > > stuff already, but now in a different flavour.
> > 
> > Fake stride - like I said, no problem; sounds good. That solves one
> > dimension.
> > 
> > So do you have a proposal for how we determine what the allocated
> > height is in that case? I don't really see a way.
> 
> Could you compute the height by looking at the buffer size? Or does that
> not help since the header stuff is generally rather small?

I've wondered about that. We might be able to use it heuristically,
but it does place certain assumptions on the allocator - for instance
rounding up to a page order might cause problems.

> 
> Otherwise I guess just round up height and hope it works. If we run into a
> use-case where that doesn't work anymore somehow, then we get to rev all
> the afbc modifiers and make them 2 planes. With that there's no such issue
> anymore (which is why the intel compressed stuff has 2 planes).
> -Daniel
> 

We considered exposing the header explicitly as a plane before
originally submitting the modifiers; however the header and body are
linked in such a way that they aren't separable, so they aren't really
separate planes. Also we have multi-plane AFBC buffers, where each
plane has its own header and thus we'd need at least 6 planes to
describe it fully if we separate out the header.

I'm not entirely sure how a separate header plane would help with this
issue anyway.


We could round up the height, which should cover the common case. It
seem(ed) safest to start with the conservative restrictions.

My proposal for handling the case of additional vertical padding on
top of that would be to add a field in the modifier which indicates
how much additional vertical padding there is. I know the Broadcom
SAND modifiers do a similar thing. It does make the modifiers a bit
"non-opaque" though, as the modifier value can't be simply queried
from the modifier list.


... all of that said, the kernel interface is already rich enough to
support everything, if userspace understands that sometimes it needs
to crop.

Thanks,
-Brian

> 
> > Thanks,
> > -Brian
> > 
> > > 
> > > Also I think that's more reasons why this should be no-opt-outable
> > > code that's done for all drivers when we check framebuffers in addfb.
> > > Plus then some helpers to get at computed values for any framebuffer
> > > we know to be valid.
> > > -Daniel
> > > 
> > > > > This may force us to do some silly cropping games inside the Rockchip
> > > > > KMS driver, but I feel it beats the alternative of breaking userspace.
> > > >
> > > > Well, nothing's going to get broken - it's just perhaps not ready to
> > > > turn on AFBC yet.
> > > >
> > > > >
> > > > > > +                   DRM_DEBUG_KMS(
> > > > > > +                           "AFBC buffer must be aligned to 16
> > > > > > pixels\n"
> > > > > > +                   );
> > > > > > +                   return false;
> > > > > > +           }
> > > > > > +           break;
> > > > > > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > > > > +           /* fall through */
> > > > >
> > > > > It's also incongruous that 32x8 is unsupported here, but has a section
> > > > > in get_superblk_wh; please harmonise them so this section either does
> > > > > the checks as above, or that get_superblk_wh doesn't support 32x8
> > > > > either.
> > > > >
> > > > > > +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> > > > > > +                           u32 w, u32 h, u32 superblk_w, u32
> > > > > > superblk_h,
> > > > > > +                           size_t size, u32 offset, u32 hdr_align,
> > > > > > +                           u32 *payload_off, u32 *total_size)
> > > > > > +{
> > > > > > +   int n_superblks = 0;
> > > > > > +   u32 superblk_sz = 0;
> > > > > > +   u32 afbc_size = 0;
> > > > >
> > > > > Please don't initialise the above three variables, given that you go on
> > > > > to immediately change their values. In this case, initialising to zero
> > > > > can only hide legitimate uninitialised-variable-use warnings.
> > > > >
> > > > > > +   n_superblks = (w / superblk_w) * (h / superblk_h);
> > > > > > +   superblk_sz = (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
> > > > > > +   afbc_size = ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
> > > > > > +   *payload_off = afbc_size;
> > > > > > +
> > > > > > +   afbc_size += n_superblks * ALIGN(superblk_sz,
> > > > > > AFBC_SUPERBLK_ALIGNMENT);
> > > > > > +   *total_size = afbc_size + offset;
> > > > >
> > > > > Generally these are referred to as 'tiles' rather than 'superblocks',
> > > > > given that I would only expect one superblock per buffer, but if that's
> > > > > the terminology AFBC uses then it might be better to stick with it.
> > > > >
> > > > > > +   if ((w * bpp) != (pitch * BITS_PER_BYTE)) {
> > > > > > +           DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE)
> > > > > > (=%u) should be same as width (=%u) * bpp (=%u)\n",
> > > > > > +                         pitch * BITS_PER_BYTE, w, bpp
> > > > > > +           );
> > > > > > +           return false;
> > > > > > +   }
> > > > >
> > > > > Having a too-small pitch is obviously a problem and we should reject
> > > > > it. But is having a too-large pitch really a problem; does it need to
> > > > > be an exact match, or can we support the case where the pitch is too
> > > > > large but also tile-aligned? If we can, it would be very good to
> > > > > support that.
> > > >
> > > > The reason for forcing it to be exact is as I said above - we _must_
> > > > know what the "real" width and height is. Implementing this check to
> > > > force (pitch == width * bpp) ensures that, and also leaves the option
> > > > for us to relax to allow a larger pitch (as above) if that was the
> > > > preferred approach for alignment.
> > > >
> > > > In general the current checks are deliberately designed to leave the
> > > > door open for future improvements without breaking anything.
> > > >
> > > > Cheers,
> > > > -Brian
> > > >
> > > > >
> > > > > Cheers,
> > > > > Daniel
> > > > >
> > > > IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
> > 
> > Not sure how that snuck in.
> > 
> > > 
> > > 
> > > 
> > > -- 
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > +41 (0) 79 365 57 48 - http://blog.ffwll.ch
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
