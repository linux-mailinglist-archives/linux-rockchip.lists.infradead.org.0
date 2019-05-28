Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380FC2CDB1
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 19:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fG6p128NZvnX/NkhVjAesyrA9v6q+GcY0Wy5rfUwO3E=; b=VxRfuMr4gwNrS1
	xHXMzTyd0kQmgmgYRfuQu3wGcW88lIp/22q3sTZPb9Dn0oo5YxD6Z4Bl3wStNHSkoMPLXQ56V5I1G
	p2L1lo7m9t1iOFwQPHJQTlEaK5RndYp25seLoxEhWc+SN/P47/8XUPSnmag+7ZYePFy2C0+8xKQNu
	stK5ZInjHDSIoF2G8GUYasBW9tSV9YX+y/O6MYgwLl8B/UZ4M1K+4pKT5sreS3NS56HsogSyFFoGj
	sUWB5KT9fodX8owrc7MJf17zO9eWMwjprDIGqiXmnQCtygm7V0ugng/gp8JEj2ppC9MTQsWneIPLg
	nToqo3BFXMC1g3Tk+Ivw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfyD-0007aF-4Y; Tue, 28 May 2019 17:33:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfxm-0007AV-0j
 for linux-rockchip@bombadil.infradead.org; Tue, 28 May 2019 17:32:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sQTj4k+iPtdqID/IdA/vbxKOwz+ihxZ9Whn4hmY2AZ0=; b=xuMAbPDJLe5AiI80CLw6sRls1N
 Su6XKiIIlPNRs365CN/iY/u0EAotAbGdZRCkkBRvNSgm2QKA2NdP6rHYPnn2lj0XWV0vqbA/1d8la
 vvna7OICi90r6WRF4LJOsSVMdCpO8iChw30VWU9gHVL22fmnkxEHaPuYW1jnkiFijPt1SKAga1T7w
 y4lRqI4aHQH0gi60zlksBPufzc/EPt3VT2Puf2Pm6OyJ40E8pKcADvC9N//rKcvo/s4BvazA9EgYW
 G3njd512TgLSBE1ns5Ck/5JsReTMhw6pRjn0K+SiYAFQ5vkO4JQJcFbotqL7myWZg4qkDijnK3OcG
 p84ryuUA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfWP-0005hY-L5
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 17:04:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D05BC284AF7
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v6 16/16] rockchip/vpu: Add support for MPEG-2 decoding on
 RK3328
Date: Tue, 28 May 2019 14:02:32 -0300
Message-Id: <20190528170232.2091-17-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528170232.2091-1-ezequiel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_130421_824396_4E0A369E 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jonas Karlman <jonas@kwiboo.se>

Add necessary bits to support MPEG2 decoding on RK3328.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
--
Changes from v5:
* New patch.

 drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c   | 12 ++++++++++++
 .../staging/media/rockchip/vpu/rockchip_vpu_drv.c    |  1 +
 drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h |  1 +
 3 files changed, 14 insertions(+)

diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
index 2b3689968ef4..341f8d69c33d 100644
--- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
+++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
@@ -175,3 +175,15 @@ const struct rockchip_vpu_variant rk3399_vpu_variant = {
 	.clk_names = {"aclk", "hclk"},
 	.num_clocks = 2
 };
+
+const struct rockchip_vpu_variant rk3328_vpu_variant = {
+	.dec_offset = 0x400,
+	.dec_fmts = rk3399_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
+	.codec = RK_VPU_MPEG2_DECODER,
+	.codec_ops = rk3399_vpu_codec_ops,
+	.vdpu_irq = rk3399_vdpu_irq,
+	.init = rk3399_vpu_hw_init,
+	.clk_names = {"aclk", "hclk"},
+	.num_clocks = 2
+};
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index b94ff97451db..2e22009b6583 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -419,6 +419,7 @@ static const struct v4l2_file_operations rockchip_vpu_fops = {
 
 static const struct of_device_id of_rockchip_vpu_match[] = {
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
+	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
 	{ /* sentinel */ }
 };
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
index 6cecb528f994..3d6b97af90fb 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
@@ -79,6 +79,7 @@ enum rockchip_vpu_enc_fmt {
 };
 
 extern const struct rockchip_vpu_variant rk3399_vpu_variant;
+extern const struct rockchip_vpu_variant rk3328_vpu_variant;
 extern const struct rockchip_vpu_variant rk3288_vpu_variant;
 
 void rockchip_vpu_watchdog(struct work_struct *work);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
