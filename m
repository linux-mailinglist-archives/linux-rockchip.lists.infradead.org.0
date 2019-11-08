Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFA1F50B7
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 17:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jc9Io4uKsguzPkQ4oepIj8Go1qVew8lseWS81NLfq1k=; b=qdXz1l6Wbrji2d
	srkuc3tUqLIDG4aLcJxnigpJ9ZVyuuLU50knwKQ7cFYDFuRNHYTXPhHxXEq+zukuF9fQaOjt724mz
	e/qd24CzXocWzDIOns3ku4MeX3yRFpmGt2KHAMRgY2bJDL6eKg6cnsYYYValAq/0xEmwKusnWIRat
	FAnyaSIciG/AuXZVA4Eel1u5Q6wxLk0Q2GkkqDsajkaBV7BNr4fdQRMNWrIFUArRWz7wlfoHFu2su
	mPHH3McGsN+iM+E7v85BAHK4kSJAMrlbwtHZ0bFe3xfkgpyGeCl7tK9Kp5rjYEQa9XRe3Vv6Nhx+D
	HaBSyjhOEytt38zuWXkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6q2-0007oX-3C; Fri, 08 Nov 2019 16:10:18 +0000
Received: from mail-db5eur01on060a.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::60a]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6py-0007fF-Di
 for linux-rockchip@lists.infradead.org; Fri, 08 Nov 2019 16:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Ma+a7IXg37BtqFIFodDHzf5p1ka57+xA/4Sk43Bpo0=;
 b=FV56Ms4LhIUNa5Va8nHu3DwWAaltuFuxrJLvynE8v5MYkcrRlABS/Jnzc60hU6kZlwCiKwbzKuanSqMcxTOxPLaElzanrMK9noR2zY+yOOwi0hEY10/yfSLtemLYk6LCGOilmtqr4FZS+cVxZWSgg4e/JL64AjqU8C7uO8ZG0lA=
Received: from VI1PR08CA0256.eurprd08.prod.outlook.com (2603:10a6:803:dc::29)
 by AM5PR0801MB1763.eurprd08.prod.outlook.com (2603:10a6:203:3b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.24; Fri, 8 Nov
 2019 16:10:07 +0000
Received: from VE1EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by VI1PR08CA0256.outlook.office365.com
 (2603:10a6:803:dc::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Fri, 8 Nov 2019 16:10:07 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT050.mail.protection.outlook.com (10.152.19.209) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Fri, 8 Nov 2019 16:10:07 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Fri, 08 Nov 2019 16:10:01 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 91d9da83f8e0e9d8
X-CR-MTA-TID: 64aa7808
Received: from b70bfbaced47.2 (cr-mta-lb-1.cr-mta-net [104.47.8.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 26528A83-6F97-4C8B-A4B7-9E0AA436BB2D.1; 
 Fri, 08 Nov 2019 16:09:56 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2050.outbound.protection.outlook.com [104.47.8.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b70bfbaced47.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 08 Nov 2019 16:09:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZfsMhPwR91Gp+xgmna72Uq5qB8jg6T8uzZkBhpoKHLEE8EwiqrMdy1oy3yJGeL2PzNN24QIRejSug13/NwtSMv9mmn/11crvnHR21J5YIz34HIpR/A/GaSauvEzeMDobepu3I67Ya6HViFCRPqunLVcg9c3j+fr9SWWozJm+zrc+XK8GCeI/DmbNHuluFo0vOJLhCWoYu+CJSHmdPPpiufj3d8TAUmLlLAumoK10aiVKxnTa4rR48Jp7NV6kbA0K8NcUQoDxi5NZVhiFT3COnV8kojSZYRbtoXaHqZojp4zc8l/3z9DONb5lIhYMeLGD3RG3oOqZEVTgU2oryw4CEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Ma+a7IXg37BtqFIFodDHzf5p1ka57+xA/4Sk43Bpo0=;
 b=jjJmzkO0F7ILPtb0z5mtFqflhEm9O+uJLJLSlbud4r9Tv9PATqjbfijNxKN5NhYdUej350hIU6bJs1lWVRW1SUQ3npmozQIOF84U2g/ueLLdXgG2jAFfADJG5erer6IdYySp6JF8hTVJII5tYpwgAz3FVboQyUaWIMiS9mGyS1E+ASjSsIDQb/J1NbJi2tl2MK/RPYOFXRdE0XHqlwHklQDQl4FyuYwWSZA5awO6z8wz5k25UOWP/ZNLt2LWEnZoS4OGMkK4u32d1wVZn2QObyM6TTyEtINbNMphWAcB2paaJYLQKNTUNxNLDvfOP7WgLHqnbiiMwdjUj8oz+sa/kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Ma+a7IXg37BtqFIFodDHzf5p1ka57+xA/4Sk43Bpo0=;
 b=FV56Ms4LhIUNa5Va8nHu3DwWAaltuFuxrJLvynE8v5MYkcrRlABS/Jnzc60hU6kZlwCiKwbzKuanSqMcxTOxPLaElzanrMK9noR2zY+yOOwi0hEY10/yfSLtemLYk6LCGOilmtqr4FZS+cVxZWSgg4e/JL64AjqU8C7uO8ZG0lA=
Received: from AM0PR08MB5345.eurprd08.prod.outlook.com (52.132.215.213) by
 AM0PR08MB3025.eurprd08.prod.outlook.com (52.134.93.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Fri, 8 Nov 2019 16:09:55 +0000
Received: from AM0PR08MB5345.eurprd08.prod.outlook.com
 ([fe80::109c:e558:5074:13e4]) by AM0PR08MB5345.eurprd08.prod.outlook.com
 ([fe80::109c:e558:5074:13e4%6]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 16:09:55 +0000
From: Ayan Halder <Ayan.Halder@arm.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Topic: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Index: AQHVk1z8e+jyr8X5TkmCl+TtswqJkaeBdzAA
Date: Fri, 8 Nov 2019 16:09:54 +0000
Message-ID: <20191108160954.GA17321@arm.com>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-4-andrzej.p@collabora.com>
In-Reply-To: <20191104221228.3588-4-andrzej.p@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0007.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::19) To AM0PR08MB5345.eurprd08.prod.outlook.com
 (2603:10a6:208:18c::21)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.50]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 95d886cd-17f0-4c07-99bd-08d764661f67
X-MS-TrafficTypeDiagnostic: AM0PR08MB3025:|AM0PR08MB3025:|AM5PR0801MB1763:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0801MB176386358BD646E86FB615F1E47B0@AM5PR0801MB1763.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0215D7173F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(189003)(199004)(33656002)(476003)(2616005)(486006)(6506007)(386003)(102836004)(6436002)(52116002)(26005)(44832011)(305945005)(6512007)(4326008)(8676002)(76176011)(229853002)(256004)(81156014)(81166006)(66446008)(64756008)(186003)(11346002)(446003)(99286004)(66066001)(6916009)(7736002)(6486002)(66946007)(66476007)(66556008)(8936002)(86362001)(25786009)(1076003)(316002)(71200400001)(2906002)(54906003)(14444005)(6116002)(3846002)(5660300002)(6246003)(7416002)(14454004)(36756003)(71190400001)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3025;
 H:AM0PR08MB5345.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: mSdd7velgxrCU82YKwOHrI0/stMIZJbXymhrbhewSy4Hj54WlNxwVdNVrzLaxZP7bOKFeHu4WAHAQhhfgLcoxIQCbRcrbV5LS+90sj1DNCbNskVxf4UEiUUpnWeumoUKejZ1bXeaEMarHYgFcQNQQeDjdVzrtWSlCp9lKyP+7bA+Q/zh0hIjueJjNG5RK1w0vfF5s3jxPzCyKdfmPofFti+vuS185ruMn0f1KAmbIn2vxFF1JXIGN/XYZZxhyFSMtes7h2xIO0jZqD4l47nf4QXpimjJyR/Kaplb2F7NjSEUypU7kbX0ZyQaFvFsNRikSnYVdXJF7JB5PV2OpJOPTqRtCxKvxrsH+ckwSooTmSiYzbt640sN9c+GMzBwNdlfGpFqtXpf61NdvHJLBogpcdce44c8Y6F0f75BqfYu/gQnheLcC3BgupnfA4LHWyp1
Content-ID: <7C70E09EA3E76D4E9339612D2D6FF4C7@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3025
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(39860400002)(346002)(1110001)(339900001)(199004)(189003)(70206006)(2616005)(23756003)(76130400001)(25786009)(11346002)(446003)(356004)(305945005)(4326008)(8746002)(336012)(476003)(486006)(76176011)(126002)(26005)(186003)(66066001)(8936002)(22756006)(7736002)(6512007)(6116002)(6486002)(47776003)(6246003)(386003)(102836004)(6506007)(2906002)(3846002)(81166006)(33656002)(8676002)(81156014)(478600001)(229853002)(36756003)(105606002)(86362001)(99286004)(316002)(36906005)(6862004)(14454004)(70586007)(1076003)(54906003)(14444005)(50466002)(5660300002)(26826003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1763;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0bf79ed3-0ffe-4660-a099-08d7646617f6
NoDisclaimer: True
X-Forefront-PRVS: 0215D7173F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N1QadfXILoYjTyMnvmiXbylyWakadUckMsfBJ+yed+ZwBTZ/yB2asm5Hb37uc56Ob48aH67OfNTWfGPOhpycNcZEJhL7aQH2m9h489zwHrdElrsuQ/dFKYdXv4OwrYIzD+JAYLxiYkNXslb8K+iV1aw+Nk9y++Ak8u9fSL+IR5I5sXFbBVJCB2lYuV6EkjhWBJNigNQsc60EzqmfJqAvfA3NHCm1UsgvUwTW2Tc/dxOFz8kDJ1BD1vJgO5AbaghfAmm1+lUF4MKL6Zv+Zc+bL8f6WZP1lwymVGuxPsN1nz4X7Ghx1IKmCWAJ+UCC8d7C7ctNrGV+YuaSG5G1hYOUKueTNc4YiDySkxjadoXhFRijnJ+XVp3+rtTPTgjrF/qaGbaUq+M1yolkrg8yZ+mUistyQ+FOBdf0odcTEWNYmX6hggFHv02cK4J1kaj9VfUf
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2019 16:10:07.1458 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 95d886cd-17f0-4c07-99bd-08d764661f67
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_081014_601007_30CBD79F 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:60a listed in]
 [list.dnswl.org]
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
Cc: nd <nd@arm.com>, "kernel@collabora.com" <kernel@collabora.com>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Mihail Atanassov <Mihail.Atanassov@arm.com>,
 Sean Paul <sean@poorly.run>, Brian Starkey <Brian.Starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 11:12:27PM +0100, Andrzej Pietrasiewicz wrote:
> There are afbc helpers available.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  .../arm/display/komeda/komeda_format_caps.h   |  1 -
>  .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
>  2 files changed, 17 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> index 32273cf18f7c..607eea80e60c 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> @@ -33,7 +33,6 @@
>  
>  #define AFBC_TH_LAYOUT_ALIGNMENT	8
>  #define AFBC_HEADER_SIZE		16
> -#define AFBC_SUPERBLK_ALIGNMENT		128
>  #define AFBC_SUPERBLK_PIXELS		256
>  #define AFBC_BODY_START_ALIGNMENT	1024
>  #define AFBC_TH_BODY_START_ALIGNMENT	4096
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> index 1b01a625f40e..e9c87551a5b8 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> @@ -4,6 +4,7 @@
>   * Author: James.Qian.Wang <james.qian.wang@arm.com>
>   *
>   */
> +#include <drm/drm_afbc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_fb_cma_helper.h>
>  #include <drm/drm_gem.h>
> @@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
>  	struct drm_framebuffer *fb = &kfb->base;
>  	const struct drm_format_info *info = fb->format;
>  	struct drm_gem_object *obj;
> -	u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
> -	u64 min_size;
> +	u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
>  
>  	obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
>  	if (!obj) {
> @@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
>  		return -ENOENT;
>  	}
>  
> -	switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> -	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> -		alignment_w = 32;
> -		alignment_h = 8;
> -		break;
> -	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> -		alignment_w = 16;
> -		alignment_h = 16;
> -		break;
> -	default:
> -		WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> -		     fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> -		break;
> +	if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
> +		return -EINVAL;
> +
> +	if ((alignment_w != 16 || alignment_h != 16) &&
> +	    (alignment_w != 32 || alignment_h != 8)) {
> +		DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
> +			      alignment_w, alignment_h);
> +
> +		return -EINVAL;
To be honest, the previous code looks much more readable
>  	}
>  
>  	/* tiled header afbc */
> @@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
>  		goto check_failed;
>  	}
>  
> -	n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
> -	kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
> -				    alignment_header);
> -
>  	bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
> -	kfb->afbc_size = kfb->offset_payload + n_blocks *
> -			 ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
> -			       AFBC_SUPERBLK_ALIGNMENT);
> -	min_size = kfb->afbc_size + fb->offsets[0];
> -	if (min_size > obj->size) {
> -		DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
> -			      obj->size, min_size);
We need kfb->offset_payload and kfb->afbc_size to set some registers
in d71_layer_update(). At this moment I feel like punching myself for
making the suggestion to consider abstracting some of the komeda's afbc
checks. To me it does not look like komeda(in the current shape) can take
much advantage of the generic _afbc_fb_check() function (as was suggested
previously by Danvet).

However, I will let james.qian.wang@arm.com,
Mihail.Atanassov@arm.com, Ben.Davis@arm.com comment here to see if
there could be a way of abstracting the afbc bits from komeda.

Thanks anyways for taking a stab at this.
-Ayan
> +
> +	if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
> +				    mode_cmd->width, mode_cmd->height,
> +				    alignment_w, alignment_h,
> +				    obj->size, mode_cmd->offsets[0],
> +				    AFBC_SUPERBLK_ALIGNMENT))
>  		goto check_failed;
> -	}
>  
>  	fb->obj[0] = obj;
>  	return 0;
> -- 
> 2.17.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
