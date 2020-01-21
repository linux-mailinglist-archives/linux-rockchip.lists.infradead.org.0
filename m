Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7816C1447E8
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Jan 2020 23:49:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=26HInv0/tK6s2T5GKeEMJYeUs1qdZnC6vOATyoMPcEE=; b=Rah2iYK6z/Fsfr
	WjDR+eaP5BcXWUx4HVOkoMgTWu2V8DPcPnZ2tnki6ktelZK0H4hWn0gWo97TA1rlQnQB4m2VcVyq+
	rJGr9bhWkozbSRvMaOzyzeV6+PdkY4rUalb3cgnJeAFx8PON8aFTZaHLlyvYyZwAn9n2fty1ihpH7
	Z/bmDC0sp17e+m8JtCusQeDPGw4NlzQ8ahwrfMp82C0VutxdyfPDX485SApqynwXVswojDVZDPah5
	A+MCrvO+y6JjlgoN74imOPmsE8IlEhkv74lunyzo4QG8pMINfGzpRb+MQmbY9QrHuF8f/tA/jIViA
	S+K8m5IEWVLrEv6S2jig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2KT-0005Cj-BY; Tue, 21 Jan 2020 22:49:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu2KF-000526-ER; Tue, 21 Jan 2020 22:48:48 +0000
Received: from mail.linser.at ([80.109.168.170] helo=phil.Hitronhub.home)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iu2KA-0005xB-3m; Tue, 21 Jan 2020 23:48:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com
Subject: [PATCH] drm/rockchip: rgb: don't count non-existent devices when
 determining subdrivers
Date: Tue, 21 Jan 2020 23:48:28 +0100
Message-Id: <20200121224828.4070067-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_144847_640959_EE977B55 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

rockchip_drm_endpoint_is_subdriver() may also return error codes.
For example if the target-node is in the disabled state, so no
platform-device is getting created for it.

In that case current code would count that as external rgb device,
which in turn would make probing the rockchip-drm device fail.

So only count the target as rgb device if the function actually
returns 0.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/gpu/drm/rockchip/rockchip_rgb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index ae730275a34f..79a7e60633e0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -98,7 +98,8 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 		if (of_property_read_u32(endpoint, "reg", &endpoint_id))
 			endpoint_id = 0;
 
-		if (rockchip_drm_endpoint_is_subdriver(endpoint) > 0)
+		/* if subdriver (> 0) or error case (< 0), ignore entry */
+		if (rockchip_drm_endpoint_is_subdriver(endpoint) != 0)
 			continue;
 
 		child_count++;
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
