Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761671E00A7
	for <lists+linux-rockchip@lfdr.de>; Sun, 24 May 2020 18:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JNDmZjpkSf3ZBzplWshs2VjHeWI0Uqkz6m0zWhzx4OU=; b=oIWf5XvkBA/B8/
	ya4EVIfDyNb80jYWh8nyAT7p9GfpQtgVMDHkT+ei65iabz4WD7uPEtMm6gny/RYU7fFO/CXdgJRcL
	gi7ZTbsEDPtSBt4bV9DrLIMfkmsPf15uUD2+/+VAW7o23SpVTMQkto4iGt0OsX/1LubtajMjIfAnd
	pWVK2yUZf2KCgGNuZ5NJfPR73CmmQi16w6//T+k34kyaownjHhskxuYQbVCBRLX04b+S1fmARt6Ga
	aQQnJYb0tsd9wiP0EgQhxXOPvVAZ9CGrg44wQqx0Mgu6VvKHI3gB5N3yGF70G5OozmGcfSie8730C
	elF+CjD3okylSr+YjY6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jctj9-0000JO-7Q; Sun, 24 May 2020 16:43:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jctj5-0000J7-8X
 for linux-rockchip@lists.infradead.org; Sun, 24 May 2020 16:43:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id a13so6608245pls.8
 for <linux-rockchip@lists.infradead.org>; Sun, 24 May 2020 09:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FA/llXXYQQgDMCzvrQnEJDXZmoLqmKvTJ8JGdYOa/Q4=;
 b=Uv0PxqnE0uwcXOTgfmfFBS0XNCaOdx+0mUxSCP7ESut08D1qL70+IvN2wD23wcjwTs
 ehcCUEqWhDmxjE7f6CrpCAI7SWv1aqtH6gxYzf9EYVvkQvoFdKBETTXXQio3/Lx/sEs7
 eZdrPUbzUzWlt5gaR8Ty7ob0iGHQoNyYLVPD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FA/llXXYQQgDMCzvrQnEJDXZmoLqmKvTJ8JGdYOa/Q4=;
 b=B5E26fuc53zT+RchnfuSqBR12uJHxn3gO/utCA3LDvgfTvmxQaPnSLK0hQoUkgRPuG
 9kA390LRtE0eFNDP3JDbOfBrRUvNTJBuaXFWuoQBxxJgIDp9s6WzlWScbF6LqQJubAdw
 sWKo2Jbj6cjxiAausAjx0rjsLz9Bg25I1ZdROXoPX/8P4zoCCJ+bkUy1sMeclSEb1gQm
 tSnFKHlP1BDf0GhVIfN10ZFsnQ1+QLsVj2/UUC+D2tWosDSs6A56vbXCI8S6coGEXrpi
 4ah61xqbDo0WgnjNOWWsDQQePXWwOghnxnNE0MgNXJmOWcZkrVOGsQm9JJU5GvS7pIg3
 Rghg==
X-Gm-Message-State: AOAM532Rz4UjbAhYOmqZKNujS+Fg8Hy9dq9UiRtB2KEB6FAXG0mxwyDF
 H0zq9MhOj2pl0Bug/nZfJdCMVA==
X-Google-Smtp-Source: ABdhPJxk4/j85ev4FvOUYqoHwb0WhfukpRTiGHIaJDKNLz8utSxYbEJYiXPKA8ZZxEMLUwLTL+hoQw==
X-Received: by 2002:a17:90a:8c0c:: with SMTP id
 a12mr16327527pjo.149.1590338628792; 
 Sun, 24 May 2020 09:43:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9b1:856c:6c2b:bde7])
 by smtp.gmail.com with ESMTPSA id
 k2sm11575344pfd.108.2020.05.24.09.43.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 09:43:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH] clk: rk3399: Fix eMMC get_clk reg offset
Date: Sun, 24 May 2020 22:13:15 +0530
Message-Id: <20200524164315.124527-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_094351_743156_B816B2A3 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Actual eMMC get_clk register is clksel_con22 instead of
clksel_con21.

Fix it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 6a78837619..4caf3b5617 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -728,7 +728,7 @@ static ulong rk3399_mmc_get_clk(struct rockchip_cru *cru, uint clk_id)
 		div = 2;
 		break;
 	case SCLK_EMMC:
-		con = readl(&cru->clksel_con[21]);
+		con = readl(&cru->clksel_con[22]);
 		div = 1;
 		break;
 	default:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
