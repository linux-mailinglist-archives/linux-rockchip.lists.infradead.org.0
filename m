Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0034A495E
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Sep 2019 14:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZucylA3MjNvRnnX+YIZwJ/AIk1vC/pZv3fzEP7kKN4=; b=Tz6ovVzwRrdiFa
	xKVs7WnZ7tD5GLk9EKCY3Y7Gejppo040kRu588sMSQQ/c1ecxIpWpmtJ/sxjAYqtyVadl+2j/uVg5
	dEFQdKzCUqCSy0JvW/ZhQH93g9HpUeE/BPIsfNyitlvHRzph2eJ2+R+e3l1mDSxic65GWRic85uJh
	zOfp5/VQ/XgPGry8qZhOpOKIvxkqhVMoi7F8cUAsDJdYteHRAz/MnSD8UCEnN/7TuURDBNs/4Skon
	KW4wEceReheTylYIEaETzpBKv91OojHdoy7m++EVa7LopoFoztbb4yN8x/0SUKU9jdm0jFZziXaqX
	zcj6qmdHg6sf4/ocYevw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4PF0-0000pR-LO; Sun, 01 Sep 2019 12:45:58 +0000
Received: from mail-oln040092065054.outbound.protection.outlook.com
 ([40.92.65.54] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4PEq-0000bo-74
 for linux-rockchip@lists.infradead.org; Sun, 01 Sep 2019 12:45:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VTfltuUuuKKgHiAo+JIHxdlrQgfz+DYSBk6hud3c6qv0koso7mugSeZKPS39snKEqnjGwHDF0NMlpcnP2E/FpYXQM7I2Jd/bXaLW8knFx0YiwfYeYQebipI7lUSKdJQgd0eBt5DSi17TNp1iE5h882zgZSz9xHMRKRzUVCxljAgaBhy3MevOyaZSR3eeWOpWiCf1eqnIMGATGc1lWxXtGUy1aLUH6MogL0tP2aqW/e50ifeiy4s8TmwXs6ZrE1SUk2StilAXyKhXdYtv7xDoldFPeQ2h1OXkV6rKFf96bAwaQEyZaJ9GJ2QluT49mA13IwYoFHFhmDjHLj53ZBx+DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=thRAwOIy9xk91Hq/mewUM0LZexsqoFnkeXi/h6uA+Eo=;
 b=b34WWFPw0SNJlazZvgWctRsYjxGeFBOhF0cmwW+JErCjinu0DA/XQtYCdCKivesVkia+tqvdDa+gMsm2Z6wYezmasmQXi3cKBbSV+0ncETCHJth7tnLmLSDLSbhP7G5jN93Qwa3ZD7YXwQoHq+Kg/oWLvWC39IpEOfsBBEtYgS4b9cZBwVW7xFOkQL7Fmsut13lcUCc3suAuJTslzRT5oD1XzMxWbcJnrkqI51HSk1Hw6aTEK6g+jlqEfAfRwk42E1s+wUko4C0d/SsXvrQ+UHp1Q0FiC/Ww0B8xfXe+BH3/tfqPzjKME/QaNW7XDtVBIGOAnATD/otboguLW4j+uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT057.eop-EUR01.prod.protection.outlook.com
 (10.152.0.55) by HE1EUR01HT021.eop-EUR01.prod.protection.outlook.com
 (10.152.0.135) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Sun, 1 Sep
 2019 12:45:45 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.52) by
 HE1EUR01FT057.mail.protection.outlook.com (10.152.0.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Sun, 1 Sep 2019 12:45:45 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088%3]) with mapi id 15.20.2199.021; Sun, 1 Sep 2019
 12:45:45 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 06/12] media: hantro: Set H264 FIELDPIC_FLAG_E flag correctly
Thread-Topic: [PATCH 06/12] media: hantro: Set H264 FIELDPIC_FLAG_E flag
 correctly
Thread-Index: AQHVYMMsvCjvoOyW3U6yRGSkSyG0lw==
Date: Sun, 1 Sep 2019 12:45:45 +0000
Message-ID: <HE1PR06MB40119475B6B31F82297BC0E1ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
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
x-incomingtopheadermarker: OriginalChecksum:A0A8E5305A12CD36BFEBD027A8E03E128424E67FDEACDD106AF03D11AD1F1354;
 UpperCasedChecksum:EADCF05CD4599353510D720A50506B08D15FC6D2380094097560D385FA050190;
 SizeAsReceived:7892; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [hVY02xUHs5Rlee8ZrbAGlT5HZEyZbq5Y]
x-microsoft-original-message-id: <20190901124531.23645-6-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT021; 
x-ms-traffictypediagnostic: HE1EUR01HT021:
x-microsoft-antispam-message-info: i8DXRPjztV7SUkrlD3dp51OV7YHjgvPRCdLl3fo17QsG8lwcEIzZRKF5jHvUB8aQ9IKvSFc+5XsK0oLy2mFavJyw+N63VMc1Tgg90O2bv2ejxKLjyUmXTzyrnhG6JJAw95G/+58/lIJrfE/c3f5Ud15Sm29SEKKwtdV1G4WVOSMZZp92jSBYP6TbLOyHQHfE
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ae5a603-6fbf-4e0c-89a3-08d72eda4e86
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2019 12:45:45.4501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_054548_288631_EF4C8F50 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.65.54 listed in list.dnswl.org]
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

The FIELDPIC_FLAG_E bit should be set when field_pic_flag exists in stream,
it is currently set based on field_pic_flag of current frame.
The PIC_FIELDMODE_E bit is correctly set based on the field_pic_flag.

Fix this by setting the FIELDPIC_FLAG_E bit when frame_mbs_only is not set.

Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 159bd67e0a36..16f21d258f6a 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -64,7 +64,7 @@ static void set_params(struct hantro_ctx *ctx)
 	/* always use the matrix sent from userspace */
 	reg |= G1_REG_DEC_CTRL2_TYPE1_QUANT_E;
 
-	if (slices[0].flags &  V4L2_H264_SLICE_FLAG_FIELD_PIC)
+	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
 		reg |= G1_REG_DEC_CTRL2_FIELDPIC_FLAG_E;
 	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL2);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
