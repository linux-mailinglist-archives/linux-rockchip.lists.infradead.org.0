Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E9FA495F
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Sep 2019 14:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CstTyGCDwB3cHb5kgOk+tGo+ZEkMdDfnd9VLr3sfPu0=; b=iG0IS6lj49E2Kz
	XMJxy2g6WL9GV7vDUp/9ERmqUuYDYCgVTfC0Lmem9WaW4lgpshRU5+vO8aN40rf3bFcLZOXEinqSL
	bxc92MB9jVRbLbyM++VuNWmvXXfXTVyz9BVqd9+wrj5JhE9jra16igk6PZj0SuPQV/Vqlnp1jpbxW
	qOa3s+RDmpCyGMS3xy4uO6bElxFWkqwc/AHeBYlofsZF1hGrWk/pQKy8tjL23ct9lhgu/SASih2+X
	s8cINJnIb0Q0px8m9cSXnA8XDKlG24b+8RHUjDf/yvraD0sMCG/Rz8sgQx5gCglO+Rgs36TLvDicH
	l+0bUrZ1SQpXxLwcxfXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4PF2-0000rs-Rs; Sun, 01 Sep 2019 12:46:01 +0000
Received: from mail-oln040092066105.outbound.protection.outlook.com
 ([40.92.66.105] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4PEr-0000cL-7V
 for linux-rockchip@lists.infradead.org; Sun, 01 Sep 2019 12:45:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c9fP0Hv1DoFOM9NI7D2T1+LIXtFVrayHssOhTnZe+tTeODpOOwqgF42GXa9F7g7qEvSnVNYCd+cneXTzMkN5keJHx94C3GeGMEQgjQLwjoRoHbh7qVjy6jPoeqtyZZ4N91+GvLl425VBtzQ10dAfKAvN+0NyCjJdRt5AsmZIRyozSDIQB0+v3stuI3BG+3uYdG2/0JvHbwqaJ+3Lc8yJWCRIPOGrnP4/T+Sg3rakLOV8XBpp3l4K+xKNIZLgEuel478pPncUt89s3EL8kwYqaq8IyDEJPwG7u5um7fWXpWUQQiaAeB/gB7WwzmpAyZ0dbuCanZuM9Mwk7XQk9NCwSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WNLwI2Vr9+A3N1YmIFWuM6r4sRJkCtGNzcauks1wuwM=;
 b=UgoeylTa0s0Rwa7Z4o6+XjXV8u+CG9r1OixTIZgSN2ZyXSTSlbVZM4501XDujI4SYeRlCq2U8FfsyIDW8LBN8IyPGKrjSkUFFkdvQX1ETW0J9sT05nkLwd5xHIfp+PP41CAbYSSrWjmiJ693RdCbZ/HiSy+wqDmDGsxX1+Z1yrOBLXljc3bs+VuiN7TM3NjvDa02uGtbyOqLCzg3Xuv808STz0QOuKCmGPOubkiHm7DvS/0lgnxlgHn8fmMn946XOllBLOOHXDbMHgRKbb9s2pCoYu0f0UjcyfVrHT+yJeQOc8SJemMQ9oxtGNFrWZC/V22IpbBnZEd/W+wT72V5hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT057.eop-EUR01.prod.protection.outlook.com
 (10.152.0.58) by HE1EUR01HT059.eop-EUR01.prod.protection.outlook.com
 (10.152.1.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.16; Sun, 1 Sep
 2019 12:45:46 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.52) by
 HE1EUR01FT057.mail.protection.outlook.com (10.152.0.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Sun, 1 Sep 2019 12:45:46 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088%3]) with mapi id 15.20.2199.021; Sun, 1 Sep 2019
 12:45:46 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [RFC 07/12] media: uapi: h264: Add DPB entry field reference flags
Thread-Topic: [RFC 07/12] media: uapi: h264: Add DPB entry field reference
 flags
Thread-Index: AQHVYMMs779kKb2gpUmKyBZ5xgDGWg==
Date: Sun, 1 Sep 2019 12:45:46 +0000
Message-ID: <HE1PR06MB4011559BF2447047C66285D2ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
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
x-incomingtopheadermarker: OriginalChecksum:83E7D2462D52362643210F04D4B083E4417427BDD4934DAE0C8EEE0CAD8005B5;
 UpperCasedChecksum:2D1EC6E1A2062056363E892C78A3CE9FDE7683372DBD665986B0939F5237E99C;
 SizeAsReceived:7886; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [j2Pkt/cqrsUF78nONWnHYICv9g2IRIMD]
x-microsoft-original-message-id: <20190901124531.23645-7-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT059; 
x-ms-traffictypediagnostic: HE1EUR01HT059:
x-microsoft-antispam-message-info: fCWyRjRebC92tKVQhB1tRApbgVr3S9CB4YcxP5gNuXfmtskDCF8F93AcGYs8rRlWJ1/jxLsYVb9H21/w0nq9l15z5Z03FVW92+aJlGfDFwiYOoEDPPbixyaks5Hv4ARgVspKBDY57UXyE3g27wAQk2cjjoVAwwtnW1TlZ6ng/zA34NyEyneRvbCn7UVHYO87
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f1d2b61c-b78b-4ac8-2bf3-08d72eda4eef
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2019 12:45:46.1434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_054549_278396_A66B5271 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.105 listed in list.dnswl.org]
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

Add DPB entry flags to help indicate when a reference frame is a field picture
and how the DPB entry is referenced, top or bottom field or full frame.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/media/uapi/v4l/ext-ctrls-codec.rst | 12 ++++++++++++
 include/media/h264-ctrls.h                       |  4 ++++
 2 files changed, 16 insertions(+)

diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
index bc5dd8e76567..eb6c32668ad7 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
@@ -2022,6 +2022,18 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
     * - ``V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM``
       - 0x00000004
       - The DPB entry is a long term reference frame
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_FIELD_PICTURE``
+      - 0x00000008
+      - The DPB entry is a field picture
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_REF_TOP``
+      - 0x00000010
+      - The DPB entry is a top field reference
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_REF_BOTTOM``
+      - 0x00000020
+      - The DPB entry is a bottom field reference
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_REF_FRAME``
+      - 0x00000030
+      - The DPB entry is a reference frame
 
 ``V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE (enum)``
     Specifies the decoding mode to use. Currently exposes slice-based and
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index e877bf1d537c..76020ebd1e6c 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -185,6 +185,10 @@ struct v4l2_ctrl_h264_slice_params {
 #define V4L2_H264_DPB_ENTRY_FLAG_VALID		0x01
 #define V4L2_H264_DPB_ENTRY_FLAG_ACTIVE		0x02
 #define V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM	0x04
+#define V4L2_H264_DPB_ENTRY_FLAG_FIELD_PICTURE	0x08
+#define V4L2_H264_DPB_ENTRY_FLAG_REF_TOP	0x10
+#define V4L2_H264_DPB_ENTRY_FLAG_REF_BOTTOM	0x20
+#define V4L2_H264_DPB_ENTRY_FLAG_REF_FRAME	0x30
 
 struct v4l2_h264_dpb_entry {
 	__u64 reference_ts;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
