Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2986DAFD
	for <lists+linux-rockchip@lfdr.de>; Fri, 19 Jul 2019 06:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64sElEoUpTKu9HSgEHvKHjFKmdekSF4GXauoOmnhmVI=; b=sr54dMyM9A8x8Y
	CoXOsRRQLBeYCl6bMP1Lq3sPrcSStqTsU/l7Elbn19Q40k1++XajWtW4oK4BgMXf6v3qUzsnoNh8I
	2OhmDfdIS2+UK8U00iKEglshfS300F3L3A6OVRUC6+RYogmbbcenL+AjAkWbvkWnC8WhX6dmPFwEi
	DvG3ZDJefnxqmWa0psI/Dr5vHF6q2dS6vT56YKFf1kMQFypvhZGBM8hzGQXXRRNL+nbY9HAnEJfYH
	XPZkloSD3xztDQ2zpQJzB8h/sRlwsjEWtcly/OKwEXtzhi0lBjjFmM1tAxHjpDJL+pMCAN3l8hR0Q
	VYnpwSIn5JI9SnJEnjJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoK9k-0002nH-4c; Fri, 19 Jul 2019 04:06:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoK85-0000cr-Jk
 for linux-rockchip@lists.infradead.org; Fri, 19 Jul 2019 04:04:32 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAC7C218A3;
 Fri, 19 Jul 2019 04:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563509060;
 bh=NLst7gMiz/Y0OZf4M0sqwFj0qLJ8jcXHlnQdLlKzIX4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rs32Aa8oCJoKWoJKjcx1G9AHat15KUA8EDC/sxucd212mbFrFjFa/SJJGUmb0E1t+
 QIU0hV0ZU6iBkrIFF4QZ1kEVLO32AY9adKcaLdkIjzivgZNXp0+nKcv1QbGmk/j2uU
 qtq/yeaLEZgSdsCtVAJ1oIoAb6IvbGHRIeAC2OiY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 045/141] drm/rockchip: Properly adjust to a true
 clock in adjusted_mode
Date: Fri, 19 Jul 2019 00:01:10 -0400
Message-Id: <20190719040246.15945-45-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210421_733016_13DE9CAA 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>,
 Yakir Yang <ykk@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Douglas Anderson <dianders@chromium.org>

[ Upstream commit 99b9683f2142b20bad78e61f7f829e8714e45685 ]

When fixing up the clock in vop_crtc_mode_fixup() we're not doing it
quite correctly.  Specifically if we've got the true clock 266666667 Hz,
we'll perform this calculation:
   266666667 / 1000 => 266666

Later when we try to set the clock we'll do clk_set_rate(266666 *
1000).  The common clock framework won't actually pick the proper clock
in this case since it always wants clocks <= the specified one.

Let's solve this by using DIV_ROUND_UP.

Fixes: b59b8de31497 ("drm/rockchip: return a true clock rate to adjusted_mode")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Reviewed-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/20190614224730.98622-1-dianders@chromium.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index cd58dc81ccf3..d1bf8c06aa34 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1019,7 +1019,8 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 	struct vop *vop = to_vop(crtc);
 
 	adjusted_mode->clock =
-		clk_round_rate(vop->dclk, mode->clock * 1000) / 1000;
+		DIV_ROUND_UP(clk_round_rate(vop->dclk, mode->clock * 1000),
+			     1000);
 
 	return true;
 }
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
