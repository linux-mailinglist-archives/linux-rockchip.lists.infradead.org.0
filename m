Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68191C099F
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 23:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Hzi00IDl5PvC1NY3VbXMuvBv34X0Ilb4tvxjCV97oM=; b=mmVcRqHr46MIlNc8garA/mLTCH
	QnsXshInbchSaaVbvzu8QbslfbiCU66ea+XDvMkOVsPRYTvq3taQSNpkVX3Fop5g1pdHIbwlIkh8u
	HIyGt3DWtYXSh+EtC7EXnhxtfKi9NmV8uFgw5tjhzoQYe9XgGiRJKAia7CrTOceiwjBYOx41SOJfK
	fNhDE4X+xpvkhectZfIGCKzv/CmkekHckSCus1rc77PKnOc9RyI4uAEW7LyybY9bg0HYVoMwj2jiq
	dOqUaKpZhDMgVF/xfRoH5dqKnYn7ok2+8We31epfjYAnREuEdrvrlu6G7CW/2kD7c7O5GvXghf5eF
	1KXqeSWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUH0M-0006y3-0j; Thu, 30 Apr 2020 21:46:02 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUH0I-0006vO-Gd
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 21:45:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id n11so3542117pgl.9
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 14:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=40olgW3N0Uw63GCK12v84nv1cBBanm0u/AYCKonjKBo=;
 b=a1u4SNqwRxeD6DYb1+5uX8jPpR9a7aXmY6v1cMa2x76p3mGVPZSRFDI/1juR5Egn1U
 wlr65BI+blDnAu4I4KZmr0vm495wjWdI2sEDiSiuzNa6nSjSVmGlKn2UwUD3Ib/SJshl
 HhEd3a0JPmqJ9l1EtQ0xboDKYJw679Y3a4k0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=40olgW3N0Uw63GCK12v84nv1cBBanm0u/AYCKonjKBo=;
 b=e2civ7daznUyCP/1ZVansyOus1/rqfs9SQ3PV6SDTQbRa2/FHos2Ik4cckSo+B7Myq
 6Ydm0T7OqwAtuQ0+AxjFN1lbggztDuHby51i0mcXA7B4jAXRgl63BhB+HBvqSeybZfqj
 76GareiRJ3vlKAlTP5GzIrRxRaMrwQ4b/cHsO+GBs8bwOuNm496RLnECXdzSy8XROSsn
 Y4nb3wDiGhfjgk1/ZQfkCic4FmrIRg6Il/AnmvAMdYFIq+KLcM3DVhTozIiV6EJaJZIj
 CMM+E66EHMnF26j0upO7TEyZkiFCx83Rbcp/45+l1MVm5UaKouaszZ2bkRrZkI9ldCbd
 PWew==
X-Gm-Message-State: AGi0PubUPmTZ1Nl2AZh5fCr54h13wfsXGa+uA8Pe3mQ/R7+uqmdbiUGv
 97ylOG15+EjlR/xzEpNl/B2WdQ==
X-Google-Smtp-Source: APiQypIg0JjBUbAw54m9+hDQKijdoeHiVypHgB75BmQ23RKMp1/BjLZtFIMVOr+G+PcoJBPqk+MpQw==
X-Received: by 2002:a63:e210:: with SMTP id q16mr1033945pgh.26.1588283157626; 
 Thu, 30 Apr 2020 14:45:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:a9f2:11c6:8c6c:2861])
 by smtp.gmail.com with ESMTPSA id p64sm615243pjp.7.2020.04.30.14.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:45:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>, Frank Wang <frank.wang@rock-chips.com>,
 William Wu <william.wu@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@st.com>
Subject: [RFC 2/7] clk: rk3399: Enable/Disable the USB2PHY clk
Date: Fri,  1 May 2020 03:15:24 +0530
Message-Id: <20200430214529.18887-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430214529.18887-1-jagan@amarulasolutions.com>
References: <20200430214529.18887-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_144558_557317_DF29FF17 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable/Disable the USB2PHY clk for rk3399.

CLK is clear in enable and set in disable functionality.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 7feba92f9e..b1c89ea127 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1091,6 +1091,12 @@ static int rk3399_clk_enable(struct clk *clk)
 	case SCLK_MACREF_OUT:
 		rk_clrreg(&priv->cru->clkgate_con[5], BIT(6));
 		break;
+	case SCLK_USB2PHY0_REF:
+		rk_clrreg(&priv->cru->clkgate_con[6], BIT(5));
+		break;
+	case SCLK_USB2PHY1_REF:
+		rk_clrreg(&priv->cru->clkgate_con[6], BIT(6));
+		break;
 	case ACLK_GMAC:
 		rk_clrreg(&priv->cru->clkgate_con[32], BIT(0));
 		break;
@@ -1167,6 +1173,12 @@ static int rk3399_clk_disable(struct clk *clk)
 	case SCLK_MACREF_OUT:
 		rk_setreg(&priv->cru->clkgate_con[5], BIT(6));
 		break;
+	case SCLK_USB2PHY0_REF:
+		rk_setreg(&priv->cru->clkgate_con[6], BIT(5));
+		break;
+	case SCLK_USB2PHY1_REF:
+		rk_setreg(&priv->cru->clkgate_con[6], BIT(6));
+		break;
 	case ACLK_GMAC:
 		rk_setreg(&priv->cru->clkgate_con[32], BIT(0));
 		break;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
