Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9016D1CC2E8
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 May 2020 18:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LAWe0ob7m1mmVRUlLemrbXNK40xM6gqv6ipUqa7Ycy4=; b=D2aX2Uldx4/T7XuKabpgZ9oKid
	QLMHQhzBJPwrSjuDEJzinZfXkO5DybexgvAAaOALiZXhHFr5YXB7pCFC7hJzDDZxBxvRB7uw/irLp
	ckcJuB/MivmqbAWy2FQYjzKXxUKrTU+qZfkDuIhtcsLGljJGY0vY8MG1sz9Uf+JSBOMic0ZWGimW1
	k+xMih5LP9kmBdYPSL67IO7C6KRwJABtpfpEGi18F6V8ZoTuKPWYGJ2fPiw17Ie2Xtnk6ysYodQkF
	vgTqwfYJQWRTJhgUXGbShlR+rBsMwxKTAM0G4skBkE0JHBo9nNYcn8C09xy3iWQ3CQc/80Uc+C6EQ
	lcJJaMnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXSmP-00030F-2q; Sat, 09 May 2020 16:56:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSmL-0002xs-I2
 for linux-rockchip@lists.infradead.org; Sat, 09 May 2020 16:56:46 +0000
Received: by mail-pl1-x641.google.com with SMTP id f15so2064409plr.3
 for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2020 09:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bWXJOIJ9kTWujVzUlzTOv5wHMWkvOTqjzDzKMEva7i0=;
 b=GWxkFV07woEHOCE8DXVr7Tf3wtiTMSPbBNROjwzKAiVfj8TqVZhF1v7Oveq1eAqKvz
 ZFuSG90uf4GVrKGoGp6XjeWcs6RKgi/Wvg7+YaMFGUD7wmjXxW1CxjDNm1OfctaUFHQ2
 HwYwL69NOgL5fA7i9EWz0i+Lfr1r/iyetRQbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bWXJOIJ9kTWujVzUlzTOv5wHMWkvOTqjzDzKMEva7i0=;
 b=JOb0bp35EciaED9yDIwNqAV/vrt9SKXxJH3U+9Y5SmHSO4yjy3x/Y41VTa726+7lHG
 U0ZHQSM/6WCLS8aygrQ+KKfu776FPyyMa7XzaCBRFhy5NCwmyEwjx/rhadF/ZC5Z+Pp0
 S4MSbYBzOg1/UASdOET4lrL9Fqk/9A5Gp//pnqwlC4ft0uZH4DHV0+feZvLZ6nx6+dBw
 Wi1xZhF2sP2hdijXsgEWLAsrTObDaG8o5Sb+U/C1y9UgiRnN7EF5gmfqbnqMgm6NTKrs
 bNlK9yjegaLChW6kwVDGRcgK5nTsqKKEzDj4seFnP0qMq69nMF3PUZ+LlPXeNDRIJigI
 TEgg==
X-Gm-Message-State: AGi0PubFcapET/ROfEDt9tuWEWIF59sLovXoz2fzeg+aniIO69+RF2dB
 p1RlywttwCxm2Dv0q2GYNaR4OQ==
X-Google-Smtp-Source: APiQypLKkLab3qjgPUQ7XtxGDIWiNSSZT2R8vBaLIo6lzV/GYleFKkweIYXTmHLg2LrC5btAhr93CQ==
X-Received: by 2002:a17:902:7289:: with SMTP id
 d9mr7908776pll.147.1589043405091; 
 Sat, 09 May 2020 09:56:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:21f6:1c8f:ae94:fb04])
 by smtp.gmail.com with ESMTPSA id x195sm4977098pfc.0.2020.05.09.09.56.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 09:56:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 2/6] clk: rk3399: Enable/Disable the PCIEPHY clk
Date: Sat,  9 May 2020 22:26:20 +0530
Message-Id: <20200509165624.20791-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509165624.20791-1-jagan@amarulasolutions.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_095645_594665_396C282A 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, shawn.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable/Disable the PCIEPHY clk for rk3399.

CLK is clear in both enable and disable functionality.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 drivers/clk/rockchip/clk_rk3399.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 5d2bdb42c7..5fb72d83c2 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1136,6 +1136,9 @@ static int rk3399_clk_enable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_clrreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_PCIEPHY_REF:
+		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
+		break;
 	default:
 		debug("%s: unsupported clk %ld\n", __func__, clk->id);
 		return -ENOENT;
@@ -1209,6 +1212,9 @@ static int rk3399_clk_disable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_setreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_PCIEPHY_REF:
+		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
+		break;
 	default:
 		debug("%s: unsupported clk %ld\n", __func__, clk->id);
 		return -ENOENT;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
