Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B352F362D
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 Nov 2019 18:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EddrsPm4C0xe4QPC+lsGGtRZYBGF5Ayx112SF0XELuY=; b=GiR8XyW13PJSbv
	FxZleMn/YBjSz/pCfxbWnwKDg7PgtEnaBiLRwRQ76RBxaI6MMyqUOREZpxtASSRCzlM4lZJZ1Eiax
	PNAf+0x/r1x9E3wniNwotW8f2a6n9+D3bEtQxnzVK8Ek9eGAsasECerCtiZPjr+B3Gt3p0w5A3Zqc
	KzUrVjSwS1VGBSisWoD4jX74ZZO8vv0WOmm3lv9IX1zSasIizCRiVSI6fWAg2eTyggHFYDNVMDD7G
	nNhMiFHldg2aPSYntMCaPJRIaEcHvkXgRqsXbxKpSdWXOzqsAyMUz8ekfaF1oJ5yHMVRAFugVcD/0
	OuOKyJraI1TsFSno+QDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSluZ-0005HA-T2; Thu, 07 Nov 2019 17:49:35 +0000
Received: from mail-eopbgr20055.outbound.protection.outlook.com ([40.107.2.55]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSluV-0005Ga-N9
 for linux-rockchip@lists.infradead.org; Thu, 07 Nov 2019 17:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=capflGb9/qQWOFQVUAZSummVMpNDzI8Qhv2r7h4pLVA=;
 b=V6BpK7hHaNa9+/YR7oW/jiJn4t8aXG6Xwv/TjjlFODqYDzD3DuORZV4cEWCaka73lghPwjgxB/w242AHkzTuAAPntLrk1Z2jgPXkbXjswpinDWsO8c7rzCOFRo3ZWLVqYNEHzeZ1yKVv3VvUhnJ4vVQSpR/bf8LfMMcFtns1cMc=
Received: from VI1PR0801CA0074.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::18) by VI1PR08MB3085.eurprd08.prod.outlook.com
 (2603:10a6:803:47::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Thu, 7 Nov
 2019 17:49:26 +0000
Received: from DB5EUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by VI1PR0801CA0074.outlook.office365.com
 (2603:10a6:800:7d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 7 Nov 2019 17:49:26 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT051.mail.protection.outlook.com (10.152.21.19) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Thu, 7 Nov 2019 17:49:25 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Thu, 07 Nov 2019 17:49:20 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 05175dcf9b83678e
X-CR-MTA-TID: 64aa7808
Received: from 5d20b239ee2b.1 (cr-mta-lb-1.cr-mta-net [104.47.4.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 8242925B-1BFC-4995-BF1B-BD902C03F631.1; 
 Thu, 07 Nov 2019 17:49:15 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2055.outbound.protection.outlook.com [104.47.4.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5d20b239ee2b.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 07 Nov 2019 17:49:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrPJb+oIpHDYJbp2D0ss7POmdcFs3YDf1cWBVRvz+Prqyo+KQQA3m/dmFEqrjQNUpXlS4GDbEMzJJebdiz1cqfz6WTIyrf0t/W4VvrvmA55SlrONo9Wan1guPwsprgzHdsghGOk5WpYalZkzVblKAPq3Diqm5z7W31nmYf6E0V3P5Om9CALOzVZRbB878rutS5I5m22QTDNnvDzxD0ahXeQyrzDyI3SIGxsFg5dzTuhCyFSNIbglo0sp1uNroJDFAm8tUtLY20/WfwMQPU10rwgqlbE0e0sTOr0LpfZcLMF1aTqkMHheTzWzFL/Z8rDmQef5PWqO5S4lLCC2pufelA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=capflGb9/qQWOFQVUAZSummVMpNDzI8Qhv2r7h4pLVA=;
 b=MRNrpRM0KLx/Z7PThb85Gn1Q+SyUl0S1WAO8RwC9c+ZE22lce8IQNnITNGaubPgAap4SxffIneWVueGx3iGcyQP5kbPSzUQxuKBOfyiuRE4H5O/T/Jr5USOIwWzD+gTbWlq/30Zj+kSkoljjP1/q9D6g12aXeqC7n47/64GLGJAhEy7YMpvzvu9yDfGunHahzOuhONNg6iLwkiM9esMJC1D3IHskAfScn7CU2mye2oPUGsBSUiIU5gkKW8rLPyiCLb64tXjI227iDfeKXrvnCZ+mat/qYdY56Q7I6e62N/Qd6UztCA3phTnhs8VOvlp3H0mJSspUXFePkailT42B+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=capflGb9/qQWOFQVUAZSummVMpNDzI8Qhv2r7h4pLVA=;
 b=V6BpK7hHaNa9+/YR7oW/jiJn4t8aXG6Xwv/TjjlFODqYDzD3DuORZV4cEWCaka73lghPwjgxB/w242AHkzTuAAPntLrk1Z2jgPXkbXjswpinDWsO8c7rzCOFRo3ZWLVqYNEHzeZ1yKVv3VvUhnJ4vVQSpR/bf8LfMMcFtns1cMc=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB3096.eurprd08.prod.outlook.com (52.135.162.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.23; Thu, 7 Nov 2019 17:49:14 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::6804:f05f:47c0:d9e]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::6804:f05f:47c0:d9e%4]) with mapi id 15.20.2430.020; Thu, 7 Nov 2019
 17:49:14 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Thread-Topic: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Thread-Index: AQHVk1z4dagGuzJ3bkuZ5c+Y7TNITKd9OjQAgAK+PICAAANcgIAABM6A
Date: Thu, 7 Nov 2019 17:49:14 +0000
Message-ID: <20191107174913.yme5kd6iva2kc7hw@DESKTOP-E1NTVVP.localdomain>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
 <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
 <20191107171959.esg2dh6dw6i2lfst@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uGDqS2ygHjmbTS0rjgYx0LJ9-hAmOvYqEoi7z4TSHY-rA@mail.gmail.com>
In-Reply-To: <CAKMK7uGDqS2ygHjmbTS0rjgYx0LJ9-hAmOvYqEoi7z4TSHY-rA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LO2P123CA0036.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::24)
 To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2d563288-9b71-4c36-4688-08d763aad4b1
X-MS-TrafficTypeDiagnostic: AM6PR08MB3096:|AM6PR08MB3096:|VI1PR08MB3085:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB3085497A678D65FDA51FB624F0780@VI1PR08MB3085.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0214EB3F68
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(136003)(376002)(396003)(51444003)(199004)(189003)(40434004)(2906002)(64756008)(44832011)(7416002)(7736002)(305945005)(53546011)(81166006)(81156014)(8676002)(561944003)(478600001)(446003)(52116002)(76176011)(11346002)(6916009)(66446008)(476003)(6436002)(66556008)(66066001)(8936002)(386003)(6506007)(66946007)(486006)(66476007)(316002)(99286004)(25786009)(26005)(229853002)(6116002)(14444005)(5024004)(256004)(54906003)(14454004)(86362001)(1076003)(6246003)(186003)(3846002)(5660300002)(6306002)(71200400001)(71190400001)(6512007)(58126008)(102836004)(966005)(6486002)(4326008)(9686003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3096;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 0rW9vE99bWlnC26oh0zFxXf3ZZl8XRoVW+YXDq6AeUxY14IcEu5MUlVN2AtBVHcjTRkKp6rHpTH7otn+SvZqAW6UohYKVsrBns3v4tGNGaXnyxjI8x01PdBRXGD3//UvCkggG0c5SOkodfXE2ijM6OkRMRHqJnPJwrMcatJbKi8rP5duiahdJiwted0YFd88lXQlcV0TmGyv1kv+Qdr9AyX6pn+sML4ZizHR+Rp4+KEls7feJrrrbp/2RMuoT9foWiZcMiidp/HkldXQtUwRkWo/k5bAdOPXLjATKXrwsN5KcsIqmUl9c9pPhoBUTSm0Dw8wVvjeMmr5T4vNPUQYvW3FJVf03QtNWgk89fBAmya3Sehjc+AoHj8cxfXHpVDGAwfAEHe4E3eiCFY2k3dV2NpBEc/0CuUwIvM5o1GxR9zSoHMAuwEkNInXAyKkhXDza+PFJr0BSuit8eo728VyXjITp7TzHaX9m6hd5FuOX94=
Content-ID: <BAE305A436EF5246B6E7F54BAC5B46BD@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3096
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(346002)(1110001)(339900001)(189003)(51444003)(199004)(40434004)(5024004)(25786009)(3846002)(7736002)(486006)(11346002)(54906003)(305945005)(229853002)(6116002)(126002)(76130400001)(4326008)(316002)(22756006)(5660300002)(356004)(6512007)(336012)(23756003)(446003)(58126008)(9686003)(6246003)(99286004)(561944003)(6306002)(6862004)(81156014)(8936002)(81166006)(8746002)(8676002)(476003)(50466002)(47776003)(1076003)(66066001)(6506007)(6486002)(2906002)(386003)(26005)(14444005)(26826003)(70206006)(966005)(70586007)(478600001)(14454004)(53546011)(186003)(76176011)(86362001)(105606002)(102836004)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3085;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: a437d580-7422-41e0-38c5-08d763aacd80
NoDisclaimer: True
X-Forefront-PRVS: 0214EB3F68
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FfXMyHXpKEaEL0FtsvsjlSM3zx3eXbNrdFD8amm7QSP9cOJD5+QbbBFPEF6rCNAVC35x0vB+6hvEfBEmzOsFHCcVQaAv+RuhXgwcBZV+jT94ZrNBKIyV7sC6eAWlLUIdloM6Q+oTcD+Rlq7JVuslbwXK+bQ5uEbZ70y/fsVUPhCwmx5NYzeqIao72yy1Tpc3IVOtV4/BYQJq63iubUsZEo5V4BtVg3eMm2iRJgyHUkGkYVD77g3lQO5EwZXXt4pE/IkXGIOPQ0WS042d+fiPqFXAoklyFigozo+ulFNzsIbjsncJA3p9Lvs9kdqoTKC0f3gClBOvTJHJpTby9yaM0JLtFnIb7oBL1OhqeJPonI4t6XlHChPglJBTqhmgKzDmfmSQDyZA81D1z/R4sdigxxNXX1PdJL6DjcDpj+CgBKvgkhTyuBwgCxUMSHpk5nOAwJ9Y5GBWXt8ww9mTH7Jrf539azSbMLb2THoVFNGHOxE=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 17:49:25.9481 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d563288-9b71-4c36-4688-08d763aad4b1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_094931_979960_482566F5 
X-CRM114-Status: GOOD (  26.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Nov 07, 2019 at 06:32:01PM +0100, Daniel Vetter wrote:
> On Thu, Nov 7, 2019 at 6:20 PM Brian Starkey <Brian.Starkey@arm.com> wrote:
> >
> > Hi Daniel,
> >
> > On Tue, Nov 05, 2019 at 11:26:36PM +0000, Daniel Stone wrote:
> > > Hi Andrzej,
> > > Thanks for taking this on! It's looking better than v1 for sure. A few
> > > things below:
> > >
> > > On Mon, 2019-11-04 at 23:12 +0100, Andrzej Pietrasiewicz wrote:
> > > > +bool drm_afbc_check_offset(struct drm_device *dev,
> > > > +                      const struct drm_mode_fb_cmd2 *mode_cmd)
> > > > +{
> > > > +   if (mode_cmd->offsets[0] != 0) {
> > > > +           DRM_DEBUG_KMS("AFBC buffers' plane offset should be
> > > > 0\n");
> > > > +           return false;
> > > > +   }
> > > > +
> > > > +   return true;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
> > >
> > > Is this actually universally true? If the offset is sufficiently
> > > aligned for (e.g.) DMA transfers to succeed, is there any reason why it
> > > must be zero?
> > >
> > > > +bool drm_afbc_check_size_align(struct drm_device *dev,
> > > > +                          const struct drm_mode_fb_cmd2 *mode_cmd)
> > > > +{
> > > > +   switch (mode_cmd->modifier[0] &
> > > > AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > > +           if ((mode_cmd->width % 16) || (mode_cmd->height % 16))
> > > > {
> > >
> > > This is a dealbreaker for many resolutions: for example, 1366x768 isn't
> > > cleanly divisible by 16 in width. So this means that we would have to
> > > either use a larger buffer and crop, or scale, or something.
> > >
> > > No userspace is prepared to align fb width/height to tile dimensions
> > > like this, so this check will basically fail everywhere.
> > >
> > > However, overallocation relative to the declared width/height isn't a
> > > problem at all. In order to deal with horizontal alignment, you simply
> > > need to ensure that the stride is a multiple of the tile width; for
> > > vertical arrangement, that the buffer is large enough to contain
> > > sufficient 'lines' to the next tile boundary.
> > >
> > > i.e. rather than checking width/height, you should check:
> > >   * fb_stride >= (ALIGN(fb_width, tile_width), bpp)
> > >   * buf_size >= fb_stride * ALIGN(fb_height, tile_height)
> >
> > Well, sort of.
> >
> > I agree with you that for horizontal padding, we can indeed use pitch.
> >
> > However, the AFBC decoder(s) need to know exactly what the total
> > _allocated_ size in pixels of the buffer is - as this influences the
> > header size, and we need to know the header size to know where it ends
> > and the body begins.
> >
> > I see a couple of possible ways forwards:
> >
> >  - Keep it as-is. The restrictive checks ensure that there's no
> >    ambiguity and we use the fb width/height to determine the real
> >    allocated width/height. Userspace needs to be AFBC-aware and set up
> >    plane cropping to handle the alignment differences.
> >
> >  - Use pitch to determine the "real" width, and internally in the
> >    kernel align height up to the next alignment boundary. This works
> >    OK, so long as there's no additional padding at the bottom of the
> >    buffer. This would work, but I can't figure a way to check/enforce
> >    that there's no additional padding at the bottom.
> >
> >  - Something else...
> >
> > The checks as-implemented were deliberately conservative, and don't
> > preclude doing some relaxation in the future.
> >
> > On Android, gralloc is used to store the "real" allocated width/height
> > and this is used to set up the DRM API appropriately.
> 
> Fake stride + real visible h/w in the drmfb. Because that's how it
> works with all the tiled formats already, and expecting userspace to
> fudge this all correctly seems very backwards to me. In a way we had
> that entire fake stride discussion already for the block size format
> stuff already, but now in a different flavour.

Fake stride - like I said, no problem; sounds good. That solves one
dimension.

So do you have a proposal for how we determine what the allocated
height is in that case? I don't really see a way.

Thanks,
-Brian

> 
> Also I think that's more reasons why this should be no-opt-outable
> code that's done for all drivers when we check framebuffers in addfb.
> Plus then some helpers to get at computed values for any framebuffer
> we know to be valid.
> -Daniel
> 
> > > This may force us to do some silly cropping games inside the Rockchip
> > > KMS driver, but I feel it beats the alternative of breaking userspace.
> >
> > Well, nothing's going to get broken - it's just perhaps not ready to
> > turn on AFBC yet.
> >
> > >
> > > > +                   DRM_DEBUG_KMS(
> > > > +                           "AFBC buffer must be aligned to 16
> > > > pixels\n"
> > > > +                   );
> > > > +                   return false;
> > > > +           }
> > > > +           break;
> > > > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > > +           /* fall through */
> > >
> > > It's also incongruous that 32x8 is unsupported here, but has a section
> > > in get_superblk_wh; please harmonise them so this section either does
> > > the checks as above, or that get_superblk_wh doesn't support 32x8
> > > either.
> > >
> > > > +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> > > > +                           u32 w, u32 h, u32 superblk_w, u32
> > > > superblk_h,
> > > > +                           size_t size, u32 offset, u32 hdr_align,
> > > > +                           u32 *payload_off, u32 *total_size)
> > > > +{
> > > > +   int n_superblks = 0;
> > > > +   u32 superblk_sz = 0;
> > > > +   u32 afbc_size = 0;
> > >
> > > Please don't initialise the above three variables, given that you go on
> > > to immediately change their values. In this case, initialising to zero
> > > can only hide legitimate uninitialised-variable-use warnings.
> > >
> > > > +   n_superblks = (w / superblk_w) * (h / superblk_h);
> > > > +   superblk_sz = (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
> > > > +   afbc_size = ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
> > > > +   *payload_off = afbc_size;
> > > > +
> > > > +   afbc_size += n_superblks * ALIGN(superblk_sz,
> > > > AFBC_SUPERBLK_ALIGNMENT);
> > > > +   *total_size = afbc_size + offset;
> > >
> > > Generally these are referred to as 'tiles' rather than 'superblocks',
> > > given that I would only expect one superblock per buffer, but if that's
> > > the terminology AFBC uses then it might be better to stick with it.
> > >
> > > > +   if ((w * bpp) != (pitch * BITS_PER_BYTE)) {
> > > > +           DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE)
> > > > (=%u) should be same as width (=%u) * bpp (=%u)\n",
> > > > +                         pitch * BITS_PER_BYTE, w, bpp
> > > > +           );
> > > > +           return false;
> > > > +   }
> > >
> > > Having a too-small pitch is obviously a problem and we should reject
> > > it. But is having a too-large pitch really a problem; does it need to
> > > be an exact match, or can we support the case where the pitch is too
> > > large but also tile-aligned? If we can, it would be very good to
> > > support that.
> >
> > The reason for forcing it to be exact is as I said above - we _must_
> > know what the "real" width and height is. Implementing this check to
> > force (pitch == width * bpp) ensures that, and also leaves the option
> > for us to relax to allow a larger pitch (as above) if that was the
> > preferred approach for alignment.
> >
> > In general the current checks are deliberately designed to leave the
> > door open for future improvements without breaking anything.
> >
> > Cheers,
> > -Brian
> >
> > >
> > > Cheers,
> > > Daniel
> > >
> > IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

Not sure how that snuck in.

> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
