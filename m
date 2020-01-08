Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C82D134E7D
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 22:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x2cy1sPcfD/ulqziL9zbyYQZn4efIkiAuLiyI4HJBeo=; b=P2UkBL0RXFOz8J3QuobhG1sm6J
	kX8IHut5/vJ6uzFFkAwUO8vNcpGCUVzOZKO8JgYAz5DjM8tipKiWFs8vAQ2v1nL8TVY2DV3LwGHUJ
	3EdPr1NFWcss2xFNgldAGAZ0jFj0gBKz1LWnZa5O0AXtM465c3QvnY6e71TOWJd1N5vm0ESPgP+Bc
	gxdO7kmynwjHQ9SjdMOYVlXz47fY92BQ6SnKI5RA7TX+JNTN2ndgwBTxE3dBvxLaBYDzcRCyp0KLE
	aD+MBzT/n2hVUganPyg+tO7Fq8UYu96VYufV1xAXnzNwmiWLZz6SRyzz1RGGSRrEYN6xPXPOIb1zk
	10BG5pZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIb2-00048j-RE; Wed, 08 Jan 2020 21:10:32 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYQ-0000BO-Tk
 for linux-rockchip@lists.infradead.org; Wed, 08 Jan 2020 21:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=mPIGzETFyK+yy6AvuQViu61rlq4EFws+y7mGZ96sfzo=;
 b=bOdRKw3CE56+rxLYPC/ZQP0aQ2Rf8EhNnNtyg1xfcDeCqlfC+Y8ZdcNXo5BdOBR1BKlY
 WqDNfXAsQRJ2LdiktYj4AIeThjIOyciSqqZjjg4j8zoSg1AufhAMFG7Sok6+RYC6IQzLlw
 JrVsoVVbdovcpwOSrqoXGybXA1EsGCA7U=
Received: by filterdrecv-p3mdw1-56c97568b5-d7vf5 with SMTP id
 filterdrecv-p3mdw1-56c97568b5-d7vf5-18-5E1644A6-6
 2020-01-08 21:07:50.14129033 +0000 UTC m=+1974283.644180722
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id 5gIH8ZCXQJCZxUfJPXl_Sw
 Wed, 08 Jan 2020 21:07:49.944 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 07/14] drm/rockchip: dw-hdmi: require valid vpll clock rate
 on rk3228/rk3328
Date: Wed, 08 Jan 2020 21:07:50 +0000 (UTC)
Message-Id: <20200108210740.28769-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h9fq3wHH7v6C53qgA?=
 =?us-ascii?Q?YlW1v7dKuNjfj9RgmNCofuXzEMYVHRoz6lVvBjE?=
 =?us-ascii?Q?A4xTi17C8zi=2Fp2rtoJpot8cXaQLOJJacIogGBpG?=
 =?us-ascii?Q?zzoLeGIKk+hcmipQnLYCPsjGEWGe1EZrKSWnnJB?=
 =?us-ascii?Q?8cZXHMrVXH1WotWCGJuK0gDjLTWaHrywzBxkVes?=
 =?us-ascii?Q?ZjvusEc5E1sZa+h2RKwoQ=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130751_009852_4C7CD5EE 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3228/RK3328 can only support clock rates defined in the pre pll table.
Lets validate the mode clock rate against the pre pll config and filter
out any mode with a clock rate returning error from clk_round_rate().

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fae38b323a0c..45fcdce3f27f 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -245,6 +245,22 @@ static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
 {
 }
 
+static enum drm_mode_status
+dw_hdmi_rockchip_encoder_mode_valid(struct drm_encoder *encoder,
+				    const struct drm_display_mode *mode)
+{
+	struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
+	long rate;
+
+	if (hdmi->vpll_clk) {
+		rate = clk_round_rate(hdmi->vpll_clk, mode->clock * 1000);
+		if (rate < 0)
+			return MODE_CLOCK_RANGE;
+	}
+
+	return MODE_OK;
+}
+
 static bool
 dw_hdmi_rockchip_encoder_mode_fixup(struct drm_encoder *encoder,
 				    const struct drm_display_mode *mode,
@@ -306,6 +322,7 @@ dw_hdmi_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 }
 
 static const struct drm_encoder_helper_funcs dw_hdmi_rockchip_encoder_helper_funcs = {
+	.mode_valid = dw_hdmi_rockchip_encoder_mode_valid,
 	.mode_fixup = dw_hdmi_rockchip_encoder_mode_fixup,
 	.mode_set   = dw_hdmi_rockchip_encoder_mode_set,
 	.enable     = dw_hdmi_rockchip_encoder_enable,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
