Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705131F1518
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 11:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EpwT9e4qU/6bYCjHuGNCvzO32zfSienaGQySxIs0QM=; b=dZXRubc+M65i4o
	hjBH8DAU+TOVniOV3RtHzyLqZQUlT1Q//871qrGE9JFg7aI3WnjVGsWdwree4avcIxTBmg2SE9tp2
	Vq54SXNNkHpFKb6FaUpFSHflvcMMfvEomIJ0fcEzoZEiHBl46Egp20JGzIpGklkpjBCpERw6NXVur
	s6vhldBCBW0rgo2MiSK2izSenHx/O6M4Sl8Re82PV3gQcUKuH5IvQLcMKvaibHTOymP0rtkm8zBIl
	N1x7habO4VhN7tgMlwnRS8N5LjHcJSf5BvqpK+UXQrPkXIulWEYO8LNSxFSG+nUp7icDaHI4Plrti
	lB1w3FqgpVElzZtpHrfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDpI-0006t5-QX; Mon, 08 Jun 2020 09:12:16 +0000
Received: from mail-eopbgr00074.outbound.protection.outlook.com ([40.107.0.74]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDpA-0006kJ-UH
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 09:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKzX6aCDOWKyLrllw0zdC08xG3NG9Bs4FJ8mRYsUwEo=;
 b=KOk1GiWcxlgnZry3MAhZnKQqVJfbsMHIiHw2lGmkCMSi7gwGJ11D5k+YBe+tbVpIA9ViWXV/f+jEhkddUH99l8UqQCTR932vy1Pr+F1IAZ8O7CxK9zmP3BmzpEfYfg6aFouE58b0ClJM/Y2wwjPZiO6kZIdra9v0C0z5EnjuCEU=
Received: from MR2P264CA0103.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:33::19)
 by VI1PR08MB2830.eurprd08.prod.outlook.com (2603:10a6:802:24::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Mon, 8 Jun
 2020 09:12:04 +0000
Received: from VE1EUR03FT021.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:500:33:cafe::4c) by MR2P264CA0103.outlook.office365.com
 (2603:10a6:500:33::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18 via Frontend
 Transport; Mon, 8 Jun 2020 09:12:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT021.mail.protection.outlook.com (10.152.18.117) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.18 via Frontend Transport; Mon, 8 Jun 2020 09:12:03 +0000
Received: ("Tessian outbound d3ae83885012:v59");
 Mon, 08 Jun 2020 09:12:03 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ee2e59017685271b
X-CR-MTA-TID: 64aa7808
Received: from dfd0e8388d7a.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D2F0D81E-CD00-4D5C-AFA1-3AA9B050A6B3.1; 
 Mon, 08 Jun 2020 09:11:58 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dfd0e8388d7a.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 08 Jun 2020 09:11:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TFPJZaIPzblZY6ywq7wRXkaessDYH3bIpmCGOX41An5UEgJPXHtECncJzJhNTkRYX8prJqBbEwengfzoCEI/cYxX3pgbsgds++SJfHZYxSz7PMGSP/D3KtiL1FXC9bBqnmfmRCJSMjsBWVYwDyW9XZ5F3vnaX+egLuT1XfKcXfnDsAcS4x8vGeaWGK4kGlkGGNQgMFtwqXJxg0q0yhZfIPRZRrC47TWNxFwb4mObRGusYf2EvuYYO6FXoMtQkT31PIXNieRB+vfgmm2DqywPbn6tYAGpwKOUAeMgpYI1TbMoGpW3hrmFBdVfI2dGmT/KHYHb35/V8XybbmE5mP5RkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKzX6aCDOWKyLrllw0zdC08xG3NG9Bs4FJ8mRYsUwEo=;
 b=a+nx/aO/ZsbVKSH1pnwF7bSbBOAmX3Mo1WzlgmYTbVnZlYgKB3jnL+ShC1UoGrKH/pnaHxrEk3REs9OCJdVzXaTxpUbImDO1hcxWQcMbzPc34w9VpDdMnyJ97iFd/Fpp1anxrRGb/7+1FxoiXzrgHGI2HwPdtDzWIWQ32l739pVfknLE1xAv/uBNNKVLPt7ELJuSN+piSDlFbqMSRGJazQICuuYmNpQtX/dnn7YKGUxB0EM1ChiusGfIQNpKvZxPfm8M6LI9YBcKFKEer9PvQeev9uFNR3fmBS99C6o+DGEqVgXfngmAmRqhms2feEEKWGhks45yOpBckNDL6laljg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKzX6aCDOWKyLrllw0zdC08xG3NG9Bs4FJ8mRYsUwEo=;
 b=KOk1GiWcxlgnZry3MAhZnKQqVJfbsMHIiHw2lGmkCMSi7gwGJ11D5k+YBe+tbVpIA9ViWXV/f+jEhkddUH99l8UqQCTR932vy1Pr+F1IAZ8O7CxK9zmP3BmzpEfYfg6aFouE58b0ClJM/Y2wwjPZiO6kZIdra9v0C0z5EnjuCEU=
Authentication-Results-Original: kwiboo.se; dkim=none (message not signed)
 header.d=none;kwiboo.se; dmarc=none action=none header.from=arm.com;
Received: from HE1PR08MB2890.eurprd08.prod.outlook.com (2603:10a6:7:36::11) by
 HE1PR08MB2859.eurprd08.prod.outlook.com (2603:10a6:7:2d::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.20; Mon, 8 Jun 2020 09:11:55 +0000
Received: from HE1PR08MB2890.eurprd08.prod.outlook.com
 ([fe80::90de:e751:3ce:d9f0]) by HE1PR08MB2890.eurprd08.prod.outlook.com
 ([fe80::90de:e751:3ce:d9f0%6]) with mapi id 15.20.3066.023; Mon, 8 Jun 2020
 09:11:55 +0000
Date: Mon, 8 Jun 2020 10:11:52 +0100
From: Brian Starkey <brian.starkey@arm.com>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 1/2] drm: drm_fourcc: add NV20 YUV format
Message-ID: <20200608091152.uqus7f6pdb46yuqj@DESKTOP-E1NTVVP.localdomain>
References: <20200607202521.18438-1-jonas@kwiboo.se>
 <20200607202521.18438-2-jonas@kwiboo.se>
Content-Disposition: inline
In-Reply-To: <20200607202521.18438-2-jonas@kwiboo.se>
User-Agent: NeoMutt/20180716-849-147d51-dirty
X-ClientProxiedBy: LO2P265CA0140.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::32) To HE1PR08MB2890.eurprd08.prod.outlook.com
 (2603:10a6:7:36::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from DESKTOP-E1NTVVP.localdomain (217.140.99.251) by
 LO2P265CA0140.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:9f::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.18 via Frontend Transport; Mon, 8 Jun 2020 09:11:54 +0000
X-Originating-IP: [217.140.99.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4fd9d2a1-d992-44b2-a41b-08d80b8c02af
X-MS-TrafficTypeDiagnostic: HE1PR08MB2859:|VI1PR08MB2830:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB28309EF635E9510184294080F0850@VI1PR08MB2830.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;OLM:6790;
X-Forefront-PRVS: 042857DBB5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: nWbV87vqj5qfyTb/k8N9tjM76CoGNbD9CBFGiB2sQ80HlntTjhXDCX4eqZ8ZAbWmdhf+HroSsTSqWr4qAbgjJGD17gm50OyZ3aa1rkg87Pgh9jMF+cGthFxpS+Cl5dBqD+A+dNeuIvILSlFkxkCpW88ghqBJBtoAdTcqSWqiROyNHFHU3bwdDm+H9+AanI/TqCXf3Lv9ouucfrWkzT7GWeuSnTSDJdWvcy4AFHA2q7Nhq0Yalc6mgYhY0Kig3gYUyIsDiRYtdHbdvVpsUWLm65GQHVwwENEUIZnEFJ+vLLsTubQuhcNh84F5lknB4Btn
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR08MB2890.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(396003)(39860400002)(376002)(346002)(366004)(66476007)(956004)(8676002)(66946007)(2906002)(55016002)(9686003)(26005)(6916009)(6506007)(4326008)(66556008)(316002)(1076003)(7696005)(52116002)(54906003)(7416002)(478600001)(186003)(86362001)(44832011)(8936002)(83380400001)(5660300002)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: tT+AmtC2eBliJiNX6tDfDn1qeFD+fWSCu7Yg4oITKKUddQOuIPpm0LolGQSQ/aqLAsjwDfR0snLRhoO6gDpFSK6qPlrooQjnAripCht2fcPxhtBfOkxSlY6gQnNX5s6YFXKTHWuA0VuJmFz6UV8zXklLlh75R1SihP/RcMlHvMjuKh5J6c2cbO70EY0RHWkcRlZEDePONS4hpcxqImbmCz3DyLE2kDMJy8UCNB408zk88f92u56KY5IxUX/J8tSmP8JOw2PVlqA9axSAGo+AF5Qt2jW7s2cwfMK/515NVBCJle29l6hqGzzwl8TcObCe7sEdiB4k45ILUI1qb4BaJT9XooNbljpdxuSc1/wE7EWRkPOHt3aendhq/LO1FwE9duQPCaViL78O/Ii+jxO5OUSfdbtXkyYiU/9v1YkHAU3t4cJiz3JZOwr2rmPBFPBVYZVPYpp9fqUK1Boo20cmyD91favxAxIUUtlohlS0nGLMjXP3zGuTyzBiP15/Cqds
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR08MB2859
Original-Authentication-Results: kwiboo.se; dkim=none (message not signed)
 header.d=none;kwiboo.se; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT021.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(136003)(346002)(396003)(39860400002)(46966005)(1076003)(44832011)(336012)(70586007)(5660300002)(70206006)(316002)(956004)(36906005)(8676002)(6862004)(83380400001)(82310400002)(478600001)(2906002)(55016002)(186003)(16526019)(26005)(86362001)(8936002)(4326008)(9686003)(6506007)(47076004)(54906003)(81166007)(356005)(7696005)(82740400003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: a0eb1f85-0873-4ffc-1eaa-08d80b8bfd48
X-Forefront-PRVS: 042857DBB5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eLp4bhRaVG7PreRMQ2AdDMSsBIX96QfXUoWls9SpwBKThMldNqhFbNtS4MkOZBcMUFfr4EU8R6Yrigw+g0Scqj2/3fCkp80Zyqs6rV/0eUEEc+VsM+CWx8R6lMv9XmUEFyuBgfGLAd+916v3EDll4Bgxcx0PiAnv5EZfeUoDCcMk34a+HToDFQWnSbbgEhFO6AZFbR6WJfsiHXjHGKi6vQxr8a0s/CvHjTiy9A2ZHhRalmX6kjxULgU4hb5ah1msphGR95VJNbWibSt0+X3YhnhROMxJenqtaDiFLfDC8vn2r0tfImOzbSPj6fodb/wk6LJbAnWw/3DcCPydKYGO/u1GQN861q15V4XCfyQQz9r6+DkkpZm1BEB6IhlqEw1WQS/fu5dFYsDttKIqKAKJ0g==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2020 09:12:03.9948 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd9d2a1-d992-44b2-a41b-08d80b8c02af
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_021208_985051_758AA867 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel@ffwll.ch>, nd@arm.com, Ben Davis <ben.davis@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jonas,

On Sun, Jun 07, 2020 at 08:25:25PM +0000, Jonas Karlman wrote:
> DRM_FORMAT_NV20 is a 2 plane format suitable for linear memory layout.
> The format is similar to P210 with 4:2:2 sub-sampling but has no padding
> between components. Instead, luminance and chrominance samples are grouped
> into 4s so that each group is packed into an integer number of bytes:
> 
> YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes
> 
> The '20' suffix refers to the optimum effective bits per pixel which is
> achieved when the total number of luminance samples is a multiple of 4.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/gpu/drm/drm_fourcc.c  | 4 ++++
>  include/uapi/drm/drm_fourcc.h | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_fourcc.c b/drivers/gpu/drm/drm_fourcc.c
> index 722c7ebe4e88..2a9c8ae719ed 100644
> --- a/drivers/gpu/drm/drm_fourcc.c
> +++ b/drivers/gpu/drm/drm_fourcc.c
> @@ -278,6 +278,10 @@ const struct drm_format_info *__drm_format_info(u32 format)
>  		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
>  		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
>  		  .vsub = 2, .is_yuv = true },
> +		{ .format = DRM_FORMAT_NV20,		.depth = 0,
> +		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
> +		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
> +		  .vsub = 1, .is_yuv = true },

That looks how I would expect, so:

Reviewed-by: Brian Starkey <brian.starkey@arm.com>

Cheers,
-Brian

>  		{ .format = DRM_FORMAT_Q410,		.depth = 0,
>  		  .num_planes = 3, .char_per_block = { 2, 2, 2 },
>  		  .block_w = { 1, 1, 1 }, .block_h = { 1, 1, 1 }, .hsub = 0,
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index b5bf1c0e630e..244d32433a67 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -242,6 +242,7 @@ extern "C" {
>   * index 1 = Cr:Cb plane, [39:0] Cr1:Cb1:Cr0:Cb0 little endian
>   */
>  #define DRM_FORMAT_NV15		fourcc_code('N', 'V', '1', '5') /* 2x2 subsampled Cr:Cb plane */
> +#define DRM_FORMAT_NV20		fourcc_code('N', 'V', '2', '0') /* 2x1 subsampled Cr:Cb plane */
>  
>  /*
>   * 2 plane YCbCr MSB aligned
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
