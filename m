Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7646D46C86
	for <lists+linux-rockchip@lfdr.de>; Sat, 15 Jun 2019 00:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B+mZhZ5dwFCs9iEcx9WQNOg6uObEZVyVFA8rO9UITa8=; b=YpN2lGB710khaf
	l5qfbhRw38LvnMGd7J2PqCrxRm3km867d93Eq9SbUZ5i+lARVFgGcLIS6b/cnBTB0vzpiWEB4j2NM
	uKrUlYubcskDJ7BJgiBayNhQVixxDbD/t86K0ou0w9319CZ6tBYxM+RtnZY8Ax0LzA/jG1kLItk6Y
	7UK8H0eM03oao4JayK90en0KlnwNXFJ+gKobFpQ9mtvpXAdB3ptuSFUYVlViFvkNkZswyS2dFahdN
	vCxq0QN5KWAfix77kQdmfDteMu7NDt0vmQRipb8xPFkUIHWE/rdtfQWXPYRECxUA8cmOb8/biDkDo
	Tof5qPLhsKwJjmXv5fcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbuzH-0002bg-FP; Fri, 14 Jun 2019 22:47:59 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbuzD-0002aX-Vz
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 22:47:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so2231655pff.8
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 15:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B/paYYaNElnUhrLCMfr9aofzvSpDY7fIjtUGwDwrL/w=;
 b=ApCzoYVFWJ+gmiLTLvrC4zRCv/sxTzAUuGigYReuCPkwv8+JbQtTQ1ujJvy8eXWLqB
 +IQTzppqRJKhqe+8V7UEuUHo4bd+AM07L3HjWFZQQdGpjnep077mDCdlHdC1RIk2DgQq
 5mJV4O++xveG92zkhvhU6kYaRMIla/IEBvu+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B/paYYaNElnUhrLCMfr9aofzvSpDY7fIjtUGwDwrL/w=;
 b=tE4BRyvI+cdTvil2qNJJKfE7r+1ILDyegM8wFwKfotVk7RvWxRkuBFZVcYcVmyQs0s
 dPC6OtQ7zIJVx/yGFhAIdhgjSQ2UluHS72ANBuFxmUvIiyTgd1hDnN92YBVxGC/cXI6V
 uS2jpb62KlhdmQnCPf2DaY3MkX5mk1t8qhlLd4SespRdxCOZHOIL6bS8pb2vqzX1Hi2t
 tEvoDAmY7ilPbFhyRcsUaykWt6Jpu2Zrjm6DmVPe8JM2OxV36P8YluFgjexGRBkgEV0v
 U6bm/CNWMU1LUKGUfdYQsR0/hIqX+AQ32CeE9FAhBhLXWmHPBsojCGhA2YU4kmiIcHw1
 OqjA==
X-Gm-Message-State: APjAAAUW9KerqmEArSBUtYHiCnSfjWnvAOGpSj8nZX2EajDaDIkjKruf
 lPuW0Lm4T18gSD38g65sMDjsOw==
X-Google-Smtp-Source: APXvYqwCFm4zexZwb/yHk0T7k2vyRVj2XJif4vKx4gUkaC3e6ysgiT29t7k5lmVupIUZSX9ZhqMjSw==
X-Received: by 2002:a63:441c:: with SMTP id r28mr37978657pga.255.1560552475017; 
 Fri, 14 Jun 2019 15:47:55 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id x7sm3706087pfm.82.2019.06.14.15.47.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 15:47:54 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de, seanpaul@chromium.org
Subject: [PATCH 1/2] drm/rockchip: Properly adjust to a true clock in
 adjusted_mode
Date: Fri, 14 Jun 2019 15:47:29 -0700
Message-Id: <20190614224730.98622-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_154756_022608_5ADC37C1 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: David Airlie <airlied@linux.ie>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 urjaman@gmail.com, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Yakir Yang <ykk@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

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
---
Back in 2016 Mark Yao said he applied this to his drm fixes [1], but it's
2019 and it's still missing so I'm posting again.

[1] https://patchwork.freedesktop.org/patch/103872/

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index e4580d8f21e1..d124f34ab9fc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1006,7 +1006,8 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 	struct vop *vop = to_vop(crtc);
 
 	adjusted_mode->clock =
-		clk_round_rate(vop->dclk, mode->clock * 1000) / 1000;
+		DIV_ROUND_UP(clk_round_rate(vop->dclk, mode->clock * 1000),
+			     1000);
 
 	return true;
 }
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
