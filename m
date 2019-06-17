Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6307E47B56
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOwfO7ifVw/U2CwHO1OFrtR5dQjjSzfzPqE+0uF2tjQ=; b=gyCnYaes0PiPLT
	voDQaASufYj+MLN0LlJ7RXt6BREmmRDRSkP0k7h+YJIJI73hCKOqNk5TyaEcnc9ToWAET3a4PViDl
	+4ReaztxHRFAqS0ilLi/c6bEJ6A7VbuMlipsttk1cqSBRYjq+0QdFOSgG2yCCB8i/9/IZYNuSItL+
	/YBsa+60cubXuCB6N1MZ1nTu3KrXog+CxHnOXUhVfnJuq2p3CbzoD//V+pLwBVP5V2KkGclqh/5Up
	gxgshXt6Yjdvq+OlJ3sQ1eofQgo2sbvpwh6HsEDdj0eiSDvWhmvML8evNMCLvOzxPxubdvlfM0e4r
	JMOl/K1JGzitDjJ4EKgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEp-0007x9-K1; Mon, 17 Jun 2019 07:39:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEl-0007uu-Kh
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so665088pgj.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O0s9gY545rQE+eRXA2L0WFk2dLSzIqdwMsv4WUxYvwE=;
 b=kFcvSOtuBv/IypE1pkxYVE8qumP6BIb8ZMwUfXSiYf+5ElvNA9nufYaeh0hcaRNSoi
 WTLs3OZivF0Pgp7MMreLlS7hJ3e5cwuUEKpe3NnZeLk1h3zu2mWtfyNASVHYgpS8cQtb
 Z2q4QUKjJvz6gfPrWxkal8MOdH1I7ZXdnt7hY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O0s9gY545rQE+eRXA2L0WFk2dLSzIqdwMsv4WUxYvwE=;
 b=Xn53nv7LNWy9GomEujXLe1G0MQKWK2TycG8VMzParVXNMJuZSEcJEyU9305Uq0OB6n
 kyjYq8o7ABY54xtlUNpt4R5/nz9zdF2GqcgLvpqeGfPU2L/HTqg0VDWR9M73cqYq2jy0
 rU8NHdzaF30MFp/0vIYHbNyBm7O9CUXq9fusNzUMlE7qHcEUNSt8+KdyaaVBUext9Iwh
 C+zY4IOywqCOk1b3/RJObhJ+8UPyg2JwifaQlej4qIuT3IrIiJxk3P0Nuswd4E+O5ows
 wTNvV3s4eP37jF42wdOcAkDcXBytaySr0Ghk5rli2XaZ0FWzX0XJEPPtpF37zOPZOD1c
 1PZQ==
X-Gm-Message-State: APjAAAUmDAY29f7Vz1pFkOfKLO1VCQ7jFIb0Edg+hmedUK45eQS+jZin
 P7BncgvcoU8w/9erlvYuN/B0EQ==
X-Google-Smtp-Source: APXvYqxRgyNm+rE7GJXvWj9ZLZHihYJNcPN/LmzZpRIxkKiaXkqAzW1FEfP1V2RgZ0zXa1qIv5c6fQ==
X-Received: by 2002:a62:4c5:: with SMTP id 188mr112022690pfe.19.1560757171097; 
 Mon, 17 Jun 2019 00:39:31 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 57/99] ram: rk3399: Add spaces in pctl_cfg
Date: Mon, 17 Jun 2019 13:02:10 +0530
Message-Id: <20190617073252.27810-58-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003931_806951_7E9DF3FB 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Trivial patch, add proper spaces in pctl_cfg.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index ae9ba625bd..d5ff17ad4f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -554,8 +554,10 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	copy_to_reg(&denali_ctl[1], &params_ctl[1],
 		    sizeof(struct rk3399_ddr_pctl_regs) - 4);
 	writel(params_ctl[0], &denali_ctl[0]);
+
 	copy_to_reg(denali_pi, &params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
+
 	/* rank count need to set for init */
 	set_memory_map(chan, channel, params);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
