Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BD319C050
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 13:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=As/hY5U6B7oo4CR/fNzTMOxOdTLKzPe56kCJ6AiJPoo=; b=FRKop/ikgzxbAG2kj74Z6Eyp7A
	njl7+1O01rck6jhjlAV4MQXeg1hoopSXhhiq22xLR7gtXvQLtDhCdPGqNL2/S1ldSazuN5GykhH3c
	pkT0l+8nY5qzW20zxMgTImROCZJUaU3mL1+E6V3z0WttWDwPYrJqnnOaX3C5lLs7Q88JN+zfGKnuP
	wt0+/N9Y8idzTbozdloGcdFYuE8Q4C/stJEXtdeAtEBq7ZfIbRMaU0xVwUimndz8kwg/TBhJoYg6y
	0FOuF2CcxNwjnEWVup83qwkmZCAiudsvdVY/OuinZG8Xt3fKOzLZXF7JgFxloqfbTdFmwTah1er0J
	jaa7MuEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyED-00024x-Fy; Thu, 02 Apr 2020 11:41:45 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyE9-00022Y-VL
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 11:41:43 +0000
Received: by mail-pj1-x1041.google.com with SMTP id v13so1441383pjb.0
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 04:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gBSDPXyREXbKviEvPOPG9KCDKDt6DwOObFfEzEgv6fg=;
 b=dG4jD98jlHWodBXZdNfvzOVkaB9xhDrkN2ZqtBgcvfGFoAUMooLr5EFiEgy0XFtdsY
 pMz7WDey1VKGS4LS/EHLmBszeTACgJZ9rSt0Xnif8J+9s1bAIpvmImZJ2JHn8nsjl4hB
 sDBR5/ZUmm8WmHP41KaCDC885svcoI8yb/lP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gBSDPXyREXbKviEvPOPG9KCDKDt6DwOObFfEzEgv6fg=;
 b=PHZC7jU4rIGWXKNJVumJzS+NjHC0M12/wAdnjA93y2kkLjr5ewo0eWpl8CAnrc0cj/
 LWTSKlSxouxO3otSC4587rDNBC9iHeW0o+WdYbClHLdl0/v7OWPHeCyx8owoqShAYmRB
 hmMNC6lJIPeeUYBnNXoHcrLfA2dHbWG4cc6XfG5O4divIirckv0gqBMxQDLB7h53OzTV
 GjZc9FuU8LXy7piLdh4aqOenjPUfX15DGV1+N+r/UnEMrXIoZhQAVSxCLP7wZ8HOGVbh
 Gsyy/R4GM61Y+VPvWKpHFd6xZsOOSryVRWRQfBqjaSQNGyg2JUu6+rsX2Kh5o78w+dQj
 F2og==
X-Gm-Message-State: AGi0PuY4HNEsGmqjU6JUd/ikexchhGetVDTx4nSIT5iJbDcIVqXHRY2R
 2Wt4xS8lpmEPdPKwezOrcLW4kg==
X-Google-Smtp-Source: APiQypKa0FqBAsVxXiE4spWFQWrfNIQPShFiq6sM7iIDQhQup35cKTBsqZIh/Rc30taG291C51CYZQ==
X-Received: by 2002:a17:902:8ec1:: with SMTP id
 x1mr2578196plo.325.1585827701334; 
 Thu, 02 Apr 2020 04:41:41 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:3532:519d:ba6d:25e1])
 by smtp.gmail.com with ESMTPSA id i4sm3618107pjg.4.2020.04.02.04.41.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 04:41:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v3 1/5] clk: rk3399: Set empty for vopl assigned-clocks
Date: Thu,  2 Apr 2020 17:11:21 +0530
Message-Id: <20200402114125.2501-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402114125.2501-1-jagan@amarulasolutions.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_044142_004435_F6026AA2 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

During vidconsole probe, the device probe will try to
check whether the assigned clocks on that video console
node is initialized or not? and return an error if not.

But, unlike Linux U-Boot won't require to handle these
vopl assigned-clocks since core clocks are enough to
handle the video out to process.

So, mark them as empty in set_rate to satisfy clk_set_defaults
so-that probe happened properly.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- new patch

 drivers/clk/rockchip/clk_rk3399.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 865b80cc0f..1f62376595 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -994,6 +994,13 @@ static ulong rk3399_clk_set_rate(struct clk *clk, ulong rate)
 	case DCLK_VOP1:
 		ret = rk3399_vop_set_clk(priv->cru, clk->id, rate);
 		break;
+	case ACLK_VOP1:
+	case HCLK_VOP1:
+		/**
+		 * assigned-clocks handling won't require for vopl, so
+		 * return 0 to satisfy clk_set_defaults during device probe.
+		 */
+		return 0;
 	case SCLK_DDRCLK:
 		ret = rk3399_ddr_set_clk(priv->cru, rate);
 		break;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
