Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1AC1B85D3
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 12:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vV62mCQbsm4Ohl4D0ncLAUP5ohoUR4agdGEr4M6dpCQ=; b=oxErZzXvIc5A9liwDDDjO9zoQV
	QZr6EEt8XUp9Lz64C0aoaSzfPjUPwhIJiusY5zt7sCxUmfDYn8sISTyw9wFYdElwh2Wzc5HDxLKsK
	srKK26XaTG3GuHqoSouLTF7UO9HEJBSVWm5t01jxMxxFilf1JMvepeyj+nV33Sc2zgRu1LsDx5EiI
	8Amg+qJf69piAqJTZ8PpbIcAp53/7vNGfHlZaoJ+4QQmsazU2mooqqCLSjrsIDzL6FxQmPoEqXh5S
	CNxNxNcJAKgCokXP/2Hx4RsKCHdWKfOHC/007Pi+H4mqMhGrND6u0zPenaqBLga8BwcleQcUq0dVv
	rBHqGcQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIRP-0007xr-Br; Sat, 25 Apr 2020 10:53:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIRL-0007vT-I4
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 10:53:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id 18so6105837pfx.6
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 03:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X0Fu+2qU88fU8C9sC/PgLXk4sJVmRSxsErJP5r2L0Rg=;
 b=dG/KWNu6fQUReMjYJszWfkkkNtPEjpUUiMP6ZzUy183yCcsikJdEnU34SzEWJQYKSz
 hdoyqhgEd/FB7hp7K5mhFYvFqPtkhq5Pa+gojrQxiTGUqToEYnrYCRHz8st6AlI/d5L3
 hU4RrxjBkbwfHhpYT9bSlI0JPneqzJ3QETimE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X0Fu+2qU88fU8C9sC/PgLXk4sJVmRSxsErJP5r2L0Rg=;
 b=AYj9gtXDBBl5XUrLmbKGGG2UKVySWb2voYo3Y4pwumZ+2YaZlcPWba/dyApkVEx/Fy
 9Wq/4EocUPTcErJxk8/n+efOkNgy+0WEOBIR2j8y/ch/RcCime6eDoQZnoljhQMeYzsB
 HJtA+YGAY/xklN3wLW88aYIEbMk0qxxWXYV+Rv1jYZEhlWslcwFPzd8LyP5991jLSL/S
 0LUIwPPYlih91KH2GqitanHaomfVStankV9oy5nGHwdJR3PYfGWkSBwplsJaYJ8a+sr8
 WKca1leTXJObcX3L4i8rNiS8RRsVts5RXf5JJH9o9yvst15ESOO4SXpgsM4EDrHoAcgt
 x86A==
X-Gm-Message-State: AGi0Pua+AZPTvHCW8DRgBJ9TXdjwwZVoDlMbJZBlnBbjHOSvkAbfgsQi
 Qu4jKr3AVlWtTO8Mg0L6DVFsMQ==
X-Google-Smtp-Source: APiQypKzByvjYL8MeVn+x3AudQdxXVziDFOU+LhBTSWu8AIa01Qheuv4TBJ83xGux3BTjf90IxJxXA==
X-Received: by 2002:a63:2143:: with SMTP id s3mr13514049pgm.20.1587812022604; 
 Sat, 25 Apr 2020 03:53:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 u188sm7996303pfu.33.2020.04.25.03.53.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 03:53:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 3/6] clk: rk3399: Set empty for HCLK_SD assigned-clocks
Date: Sat, 25 Apr 2020 16:23:16 +0530
Message-Id: <20200425105319.12009-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425105319.12009-1-jagan@amarulasolutions.com>
References: <20200425105319.12009-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_035343_595650_9F7F99AA 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to v5.7-rc1 sync the SD controller nodes in rk3399.dtsi
have HCLK_SD assigned-clocks which are usually required for
Linux and don't require to handle them in U-Boot.

 assigned-clocks = <&cru HCLK_SD>;

So, mark them as empty in clock otherwise device probe on
those SD controllers would fail.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 1f62376595..d822acace1 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -996,6 +996,7 @@ static ulong rk3399_clk_set_rate(struct clk *clk, ulong rate)
 		break;
 	case ACLK_VOP1:
 	case HCLK_VOP1:
+	case HCLK_SD:
 		/**
 		 * assigned-clocks handling won't require for vopl, so
 		 * return 0 to satisfy clk_set_defaults during device probe.
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
