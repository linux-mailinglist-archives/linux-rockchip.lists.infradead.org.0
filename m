Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD33F3599
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 Nov 2019 18:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeWVCxm1sPYRTB93g3m5lrREBSkMJKWC8LtCuXzY9bs=; b=f2RqHGbqycTSTU
	APO2x8sq3OHU2fEGJgnryR195ye/1tNvL5iOUVe7AgeiWAyxd1ITCousDNP6MffNeL95JutoGfYQf
	VJNUGqLFt4DoGNj7s7eCbDZSczNg2CNxsbYGqeafS7Rl6xuzMf8pkUF+9xevFFCc9RWBurhjfbXgY
	2TZ7ckrWXBD/7kvx2M1eXTpdgA01Ry94z30/0PYSY3BG1wvmlDULmzsDECZMGu9z8SA/zkhGkSwCq
	yxFasxgjXseX2uQ0NVpF0i4LBw1ckHkc90gZnE20+BgIxdbhF62S3NkY8/oBrpfE5LbbGSqIf+oHc
	yvysmoBVeEZLJbGNetTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlSJ-0003Gn-Q8; Thu, 07 Nov 2019 17:20:23 +0000
Received: from mail-eopbgr70073.outbound.protection.outlook.com ([40.107.7.73]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlSF-0003Fo-SS
 for linux-rockchip@lists.infradead.org; Thu, 07 Nov 2019 17:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YhTvwlHnsfIFuwJZMjkPpBGGvf0Yk+gYFE5n2A92XB4=;
 b=USy/onnZDG4c1dwmxfvUq0vAu5bvsgukTawSh0Shyts+RefUdcJWpXzPD0i/S1/Fz+3E7tQbg8Maflo6CzGhTI8CADBO6XTKHDSCuSaj4APu25hFaKqmsPfTn/0a1Do7vaHYzAjb0OGJjKHv7mK6S2Atk0HGfJT6+DkO6T6rMDI=
Received: from VI1PR08CA0127.eurprd08.prod.outlook.com (2603:10a6:800:d4::29)
 by VE1PR08MB4671.eurprd08.prod.outlook.com (2603:10a6:802:ad::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.23; Thu, 7 Nov
 2019 17:20:12 +0000
Received: from VE1EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by VI1PR08CA0127.outlook.office365.com
 (2603:10a6:800:d4::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Thu, 7 Nov 2019 17:20:12 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT003.mail.protection.outlook.com (10.152.18.108) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Thu, 7 Nov 2019 17:20:12 +0000
Received: ("Tessian outbound 6481c7fa5a3c:v33");
 Thu, 07 Nov 2019 17:20:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1e7dc5c9629f8928
X-CR-MTA-TID: 64aa7808
Received: from 1399717bac7f.2 (cr-mta-lb-1.cr-mta-net [104.47.5.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 BD2C1B1A-9608-4EBB-B99B-A1B8E74CC67C.1; 
 Thu, 07 Nov 2019 17:20:02 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2052.outbound.protection.outlook.com [104.47.5.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1399717bac7f.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 07 Nov 2019 17:20:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V8JSzT6vC7FX7k4Ev0oq/x7Dgm8nPmsY2GlgJHpe+givImJ9RXhsG5w1kY2TE2xj+gpLkJO47p5xN5KZKpg0fHR5OBPSdLj69zxZrFDl4EbtoZWgddzkMhVwyUDRlKTpVG/4Fp7MLm6Q74GJwWxIaXz/jFWrFcpVURuHZbhlxwAKoUGlhtruoXP7hF8C7a8RfcKlfQYfcQyi/Um9afTKYNSNabmNA64rmFRbHlDSZs/ewXOpBtSoVJFgqT2aNExA2OEZOPlcR7vU3VSjg4b2YeO27pwbhKfUVDY5iJLNJx3HsPmGsQU4sVAOL5osfYtEsx8zBvqmrK5JVK5Knrsq+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nl//OdXkKSaSENZFMooJgIYbxfPQagyaHi1L9TR7vbY=;
 b=h55VOhwFwRWCG1Hf6+YSwLyY16B3TgREjqHOYkr0w3PdHfC39zV1EzblswajvMniAAJOmvGRMZZSa5mbL9yvX7+cmFweQw9y7cFGcasUwh5uF0StRmsI8pRuyuu7ege0ISf7qo4k7zjnAoOrQo74m9u//8ulJgysaxhrdSN42ofrfJXHZ/UlLeZwW0/h3JkDyUiuecR5rW7kkr5Et1aznbBeI5C+ceMYbGVXJejEgYpntD3cpuqXcBvwKvD4zoN0tVupA+tCKddxyY01mmlmhUH8PIOOwEM6wZWtD+CPn0Jk+jL+PtwnSKiOfIf4EfLA6kmfl6JDAlxuZwhE8z5KhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nl//OdXkKSaSENZFMooJgIYbxfPQagyaHi1L9TR7vbY=;
 b=Rs/O3z9WKsUVoklIw0op//z+SNidJ6FAU07W98lFzHOlRtOr85QuuSGuJ0AP9+wGgYB8FATREuryqUqbJRjbaAMAcWzqB+fMXUkA0rje/si+5or/UbyHXBk+3WS2h3GrfWMKtaSYNvVOQlyFDoXHHHpQ+PZVdpDgZPMDetth4tw=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB5220.eurprd08.prod.outlook.com (10.255.96.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Thu, 7 Nov 2019 17:20:00 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::6804:f05f:47c0:d9e]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::6804:f05f:47c0:d9e%4]) with mapi id 15.20.2430.020; Thu, 7 Nov 2019
 17:20:00 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Daniel Stone <daniels@collabora.com>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Thread-Topic: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Thread-Index: AQHVk1z4dagGuzJ3bkuZ5c+Y7TNITKd9OjQAgAK+PIA=
Date: Thu, 7 Nov 2019 17:20:00 +0000
Message-ID: <20191107171959.esg2dh6dw6i2lfst@DESKTOP-E1NTVVP.localdomain>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
 <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
In-Reply-To: <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LNXP265CA0005.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::17) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c69f01b9-04ce-4329-6b42-08d763a6bf79
X-MS-TrafficTypeDiagnostic: AM6PR08MB5220:|AM6PR08MB5220:|VE1PR08MB4671:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VE1PR08MB467190DF2E11A2CCBACA7DB6F0780@VE1PR08MB4671.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0214EB3F68
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(199004)(189003)(26005)(486006)(1076003)(476003)(5660300002)(102836004)(2906002)(6246003)(6512007)(9686003)(4326008)(52116002)(6486002)(8936002)(186003)(229853002)(81166006)(81156014)(8676002)(6436002)(446003)(71200400001)(71190400001)(66446008)(64756008)(66556008)(66476007)(66946007)(76176011)(14444005)(6916009)(256004)(316002)(54906003)(58126008)(99286004)(66066001)(11346002)(44832011)(86362001)(6116002)(14454004)(3846002)(6506007)(478600001)(386003)(7736002)(305945005)(7416002)(25786009)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB5220;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 7/2Sjzi9oq7QSFNs9dG6oZh3ifTJk6S0ZlMhBwtiymDlLol1MZAbN1PhARFDV+3HJClwZNqq2kWwvR+o0n7Jf4SxO5Dz+jc+Q1EqzbpqHP0Oyct5Jcf2C+zMMKLyF9dVwzFevTINYOjQzPCX+8DiCKaWMsf/k+SNbCxdvT5FwCQA54fBr5N9uoeTemqz+TPbiynE/9OFBSwtCUsdFIqDmDIlmsQlBLODyywIGuv4gsI2qRQy+hoDjWJ7i2QPWAL4jwCbu2IuIY6rCwj1oJTl9CVQi4MVT0pWiE6jTxW1/Wd3iYc8ivJP5IUSq0l2QrsyPr21IgoJDuZl4pCZFoIBbHD09qW7Jc9c+Bt3h1Srkt3rLtqMgpgJJYAT6yRfw1EKIi9r1pPBIylmlICMad/wCz+9rQOrn9UQd4f1uJumTBstOfoPUx7prA5ezCPsmgnf
Content-ID: <10EF444E30ACA44A9A7318789F138AF9@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5220
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT003.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(1110001)(339900001)(199004)(189003)(40434004)(81156014)(50466002)(478600001)(3846002)(6116002)(76130400001)(26826003)(105606002)(305945005)(8936002)(7736002)(6506007)(6486002)(8746002)(2906002)(316002)(36906005)(8676002)(9686003)(6512007)(58126008)(66066001)(81166006)(102836004)(47776003)(22756006)(54906003)(25786009)(107886003)(6862004)(86362001)(14454004)(229853002)(70586007)(6246003)(26005)(356004)(486006)(70206006)(76176011)(446003)(99286004)(1076003)(476003)(11346002)(386003)(5660300002)(14444005)(23756003)(186003)(5024004)(4326008)(336012)(126002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4671;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: f497a1b3-8968-4587-8682-08d763a6b810
X-Forefront-PRVS: 0214EB3F68
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bH19AKrwr88IC7bLe/vjCJ/tB47NJW58G2CzziEXsm+VUEn1irX9T0+R62FHG9uMc06MlcCrEbXMdovSnWGbM3KcngoPoTZRiuoGN8MJ3uRzA99C2wgT2TVdWuaPFHEba0H+ZTAYrXOwkse/KKW2hBUM2NYFUfqKZu8h6TNa7LiyKGAO31UmTCoMBB9nPbJiDWHbyY2+psxNvB/ppimWQS4ehMw6PdQJXVihK099dRNWFTZnvYMdWVKvnUsIRYL2gCC1VS2kHpcIledT5al3c6pmvQ/EMb448GnoE0w06BW6nP0Rv85dY+U4FyGdpwHqaFm9j1M4o2eU+8a8WGXXlUnwcj+8wl0aIznMVtJfxHxhdGiC+YjikVSd6XPaXf1WdXLiZrH7Ly8AuQtfd9AncLSubMK7edwkEBmKY+sBhHoqySHT+GzfAdrfK5GWGBQT
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 17:20:12.3270 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c69f01b9-04ce-4329-6b42-08d763a6bf79
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4671
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_092020_096591_F8F8E248 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.73 listed in list.dnswl.org]
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
Cc: Ayan Halder <Ayan.Halder@arm.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Mihail Atanassov <Mihail.Atanassov@arm.com>,
 Sean Paul <sean@poorly.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Daniel,

On Tue, Nov 05, 2019 at 11:26:36PM +0000, Daniel Stone wrote:
> Hi Andrzej,
> Thanks for taking this on! It's looking better than v1 for sure. A few
> things below:
>
> On Mon, 2019-11-04 at 23:12 +0100, Andrzej Pietrasiewicz wrote:
> > +bool drm_afbc_check_offset(struct drm_device *dev,
> > +                      const struct drm_mode_fb_cmd2 *mode_cmd)
> > +{
> > +   if (mode_cmd->offsets[0] != 0) {
> > +           DRM_DEBUG_KMS("AFBC buffers' plane offset should be
> > 0\n");
> > +           return false;
> > +   }
> > +
> > +   return true;
> > +}
> > +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
>
> Is this actually universally true? If the offset is sufficiently
> aligned for (e.g.) DMA transfers to succeed, is there any reason why it
> must be zero?
>
> > +bool drm_afbc_check_size_align(struct drm_device *dev,
> > +                          const struct drm_mode_fb_cmd2 *mode_cmd)
> > +{
> > +   switch (mode_cmd->modifier[0] &
> > AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > +           if ((mode_cmd->width % 16) || (mode_cmd->height % 16))
> > {
>
> This is a dealbreaker for many resolutions: for example, 1366x768 isn't
> cleanly divisible by 16 in width. So this means that we would have to
> either use a larger buffer and crop, or scale, or something.
>
> No userspace is prepared to align fb width/height to tile dimensions
> like this, so this check will basically fail everywhere.
>
> However, overallocation relative to the declared width/height isn't a
> problem at all. In order to deal with horizontal alignment, you simply
> need to ensure that the stride is a multiple of the tile width; for
> vertical arrangement, that the buffer is large enough to contain
> sufficient 'lines' to the next tile boundary.
>
> i.e. rather than checking width/height, you should check:
>   * fb_stride >= (ALIGN(fb_width, tile_width), bpp)
>   * buf_size >= fb_stride * ALIGN(fb_height, tile_height)

Well, sort of.

I agree with you that for horizontal padding, we can indeed use pitch.

However, the AFBC decoder(s) need to know exactly what the total
_allocated_ size in pixels of the buffer is - as this influences the
header size, and we need to know the header size to know where it ends
and the body begins.

I see a couple of possible ways forwards:

 - Keep it as-is. The restrictive checks ensure that there's no
   ambiguity and we use the fb width/height to determine the real
   allocated width/height. Userspace needs to be AFBC-aware and set up
   plane cropping to handle the alignment differences.

 - Use pitch to determine the "real" width, and internally in the
   kernel align height up to the next alignment boundary. This works
   OK, so long as there's no additional padding at the bottom of the
   buffer. This would work, but I can't figure a way to check/enforce
   that there's no additional padding at the bottom.

 - Something else...

The checks as-implemented were deliberately conservative, and don't
preclude doing some relaxation in the future.

On Android, gralloc is used to store the "real" allocated width/height
and this is used to set up the DRM API appropriately.

>
> This may force us to do some silly cropping games inside the Rockchip
> KMS driver, but I feel it beats the alternative of breaking userspace.

Well, nothing's going to get broken - it's just perhaps not ready to
turn on AFBC yet.

>
> > +                   DRM_DEBUG_KMS(
> > +                           "AFBC buffer must be aligned to 16
> > pixels\n"
> > +                   );
> > +                   return false;
> > +           }
> > +           break;
> > +   case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > +           /* fall through */
>
> It's also incongruous that 32x8 is unsupported here, but has a section
> in get_superblk_wh; please harmonise them so this section either does
> the checks as above, or that get_superblk_wh doesn't support 32x8
> either.
>
> > +bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
> > +                           u32 w, u32 h, u32 superblk_w, u32
> > superblk_h,
> > +                           size_t size, u32 offset, u32 hdr_align,
> > +                           u32 *payload_off, u32 *total_size)
> > +{
> > +   int n_superblks = 0;
> > +   u32 superblk_sz = 0;
> > +   u32 afbc_size = 0;
>
> Please don't initialise the above three variables, given that you go on
> to immediately change their values. In this case, initialising to zero
> can only hide legitimate uninitialised-variable-use warnings.
>
> > +   n_superblks = (w / superblk_w) * (h / superblk_h);
> > +   superblk_sz = (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
> > +   afbc_size = ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
> > +   *payload_off = afbc_size;
> > +
> > +   afbc_size += n_superblks * ALIGN(superblk_sz,
> > AFBC_SUPERBLK_ALIGNMENT);
> > +   *total_size = afbc_size + offset;
>
> Generally these are referred to as 'tiles' rather than 'superblocks',
> given that I would only expect one superblock per buffer, but if that's
> the terminology AFBC uses then it might be better to stick with it.
>
> > +   if ((w * bpp) != (pitch * BITS_PER_BYTE)) {
> > +           DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE)
> > (=%u) should be same as width (=%u) * bpp (=%u)\n",
> > +                         pitch * BITS_PER_BYTE, w, bpp
> > +           );
> > +           return false;
> > +   }
>
> Having a too-small pitch is obviously a problem and we should reject
> it. But is having a too-large pitch really a problem; does it need to
> be an exact match, or can we support the case where the pitch is too
> large but also tile-aligned? If we can, it would be very good to
> support that.

The reason for forcing it to be exact is as I said above - we _must_
know what the "real" width and height is. Implementing this check to
force (pitch == width * bpp) ensures that, and also leaves the option
for us to relax to allow a larger pitch (as above) if that was the
preferred approach for alignment.

In general the current checks are deliberately designed to leave the
door open for future improvements without breaking anything.

Cheers,
-Brian

>
> Cheers,
> Daniel
>
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
