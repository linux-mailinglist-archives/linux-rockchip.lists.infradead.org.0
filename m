Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E8CA495D
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Sep 2019 14:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2p9xvp9A5yIO4wU7PG3ghiGXl0dp0FA8XPYKARZTP9Q=; b=P9JNxc69NrXvJG
	7WT48PibKNlhbosHjmOiyWDJqwz7aJ4YahJ8c7aPZztIa3XwClelTsvMdqqe7PZFmuCbrueAeTOwm
	3GivDoTslK6Gr1Y45KShlVPRns6CeBMQ5jVk8OqYnBKIV364Of4zPcT+pdC9jOzwhcLecfC+rLBuM
	DiMI4KTLSgGyYQoSEU/kOypo93whJ+YuLhWZVzpK1+g0cFgx+TImreDail2/L4ODtvaK6s/gZhU0d
	odF4vwKBkkmgdbBSWLTxfuQRVQkaNgBPd4+Q6RPCcva3Wb+ghOqDoW6mS6JCtG8TYC2+3EtGx5BKc
	CvUFOxnChp35qpmgloKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4PEy-0000ni-Q5; Sun, 01 Sep 2019 12:45:56 +0000
Received: from mail-ve1eur01olkn080f.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::80f]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4PEp-0000bi-UD
 for linux-rockchip@lists.infradead.org; Sun, 01 Sep 2019 12:45:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ddm1aQQjwaQipsC29O9+DccukV/nGc72VLgVbHOAsawCimTLC9E+Pqn5cMZC4yizOdEF/DVD46FibgeXhd3IvvEtAX9NSKYkoGhdo1b0IHbpP+AYxESV65DyqYbvqqMagY/2NKhEL6C0NKSL3OlDGN06u2xw6nnuHpzUnzuUWzL/PPd4n+564bPrF+vbM9atL0ZBts6aGOmwl+Y/PD4vLnUmg+PHh1lTUGrZ5qTisZklPhXDoO0JleDOuMpyz6vD9mjl5OerFUYUAuWpJyrqy3wzKkPGh8/R9qt6VsiFjhyQaqrp5R+sfdbGF7CzNjleys+JKjbjvJOi5FIjxMKKdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R7c92VmPurss8NTvshzos/roADrqhMDiRI9JUn5RuBQ=;
 b=SFJ7oL1NqDjfmzdELnitos0/qYTQ0igtFy8FlKCHFMoXH03KJeZ0/L+I6dXhjiNhjK6ShkzKGwMTqF/giFwzOx2q7LqPaAikI3e+dro4NzZ213TZphJYyUE+uQW36UFE+4KVMyZJnwcl5+fx0wjzlpk768/dg6C6Y7mivzsVlfkZDr0WVooSqIXKws5lJyzBftuRrhI++5ZlRbvOP0KD360jgK8UCfEUcRnppIKMjB4tgwpfQVu75ZfsgeB75xCPFbN1hXarHtO/O0JndL8RiqJk8+GBjtAjd5b9EoVTSIjD0wDqmbRa505pvylvh5BMHojyE+MrMBRJtt+NDZMYMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT057.eop-EUR01.prod.protection.outlook.com
 (10.152.0.57) by HE1EUR01HT080.eop-EUR01.prod.protection.outlook.com
 (10.152.0.255) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.16; Sun, 1 Sep
 2019 12:45:44 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.52) by
 HE1EUR01FT057.mail.protection.outlook.com (10.152.0.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Sun, 1 Sep 2019 12:45:44 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088%3]) with mapi id 15.20.2199.021; Sun, 1 Sep 2019
 12:45:44 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 05/12] media: hantro: Remove now unused H264 pic_size
Thread-Topic: [PATCH 05/12] media: hantro: Remove now unused H264 pic_size
Thread-Index: AQHVYMMrCo9i+f9sg02oBWTfIBVkPQ==
Date: Sun, 1 Sep 2019 12:45:44 +0000
Message-ID: <HE1PR06MB4011A8870B9FF2BA28EE7E2AACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
In-Reply-To: <20190901124531.23645-1-jonas@kwiboo.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0343.eurprd05.prod.outlook.com
 (2603:10a6:7:92::38) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:95667DAB35749EFC04A8482C14F54C6523A849737CBAB6E68B4B41D909D53276;
 UpperCasedChecksum:FC7E59BAC9D96BA2BF50DC2F46FACF2FDA90106D35557E70C43D4309E2924096;
 SizeAsReceived:7873; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [HKVv9gB9pqM9NRXQ50tg7AwB3STv/qMm]
x-microsoft-original-message-id: <20190901124531.23645-5-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119158)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT080; 
x-ms-traffictypediagnostic: HE1EUR01HT080:
x-microsoft-antispam-message-info: INlXX/QH0JhuNMDq5z5G67k82+9L4SO0lBMoaAlqjqQP8cwkbqGyoDDdtKiVOftmd4D3Wmv7CdIIQq/WT8WsVfspZGScTnKYeQAnmVRibgP/1Pk4wdSSujMPMY2mjtWCKRx96jo2hjZQs3wPIoEjeOCr1ZkI5aakwvRdgKNn+8FFioIjpF/+jlcXv3KVS9VI
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a48755c-f0a6-442b-2982-08d72eda4e1b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2019 12:45:44.7909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_054547_978782_A6D78B22 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:80f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

pic_size in hantro_h264_dec_hw_ctx struct is no longer used,
lets remove it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/hantro/hantro_h264.c | 5 -----
 drivers/staging/media/hantro/hantro_hw.h   | 3 ---
 2 files changed, 8 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index e2d01145ac4f..a77cc28e180a 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -603,7 +603,6 @@ int hantro_h264_dec_init(struct hantro_ctx *ctx)
 	struct hantro_h264_dec_hw_ctx *h264_dec = &ctx->h264_dec;
 	struct hantro_aux_buf *priv = &h264_dec->priv;
 	struct hantro_h264_dec_priv_tbl *tbl;
-	struct v4l2_pix_format_mplane pix_mp;
 
 	priv->cpu = dma_alloc_coherent(vpu->dev, sizeof(*tbl), &priv->dma,
 				       GFP_KERNEL);
@@ -614,9 +613,5 @@ int hantro_h264_dec_init(struct hantro_ctx *ctx)
 	tbl = priv->cpu;
 	memcpy(tbl->cabac_table, h264_cabac_table, sizeof(tbl->cabac_table));
 
-	v4l2_fill_pixfmt_mp(&pix_mp, ctx->dst_fmt.pixelformat,
-			    ctx->dst_fmt.width, ctx->dst_fmt.height);
-	h264_dec->pic_size = pix_mp.plane_fmt[0].sizeimage;
-
 	return 0;
 }
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 2fab655bf098..8adad8ac9b1d 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -80,15 +80,12 @@ struct hantro_h264_dec_reflists {
  * @dpb:	DPB
  * @reflists:	P/B0/B1 reflists
  * @ctrls:	V4L2 controls attached to a run
- * @pic_size:	Size in bytes of decoded picture, this is needed
- *		to pass the location of motion vectors.
  */
 struct hantro_h264_dec_hw_ctx {
 	struct hantro_aux_buf priv;
 	struct v4l2_h264_dpb_entry dpb[HANTRO_H264_DPB_SIZE];
 	struct hantro_h264_dec_reflists reflists;
 	struct hantro_h264_dec_ctrls ctrls;
-	size_t pic_size;
 };
 
 /**
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
