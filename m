Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA016A80F
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHDWoEYwCPyYHHOcuS7bYnTMk+yNOOcrqb2yCpDtEP4=; b=m4gATZhoQQBIga
	pSr8pVbRSASfGYqRCslwD+L7nW+AWsx0cckxs/zKrQ6A7klmKD6A3pJv9ilkPPS3iBK3YirH+WaQc
	ljAwMvoTi+HOSMu4Q4zAxYq8EKm/32PscDtM9AngDj9m3VcaUYEqIGFR3YsM5f0z8/hYK/eyfZFnW
	dipEChovWbyImdoCXoHpRcqRnic8vAe0q2z4o1OD+366pNzWq0Mj06ElXMgq4RDp4T0FZPHgioV2q
	E4jlsbIwclSDUQFm/+6m5uT43YdGxVmzMJ+uocJDcJ/eEWo8LsajsjoHyDd7eiKeHNQmIDnf+LCh5
	jnXBa7BwAojwSPY5i4rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9y-0008HO-5g; Tue, 16 Jul 2019 12:02:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM83-0006Xb-HI
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so9339411pgi.6
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SzmNE6oRJq62Qe1EaY6AldKbjHb0i1Rbf/HXA3VbVEU=;
 b=ETcPqIG5rLfnz9DztS8hCL3OtgMJCGfCqoksfKLGE4vi0WMvDhVC62xNJ79VlCdt3n
 lq1BMZ3b5CmhnAH2f0GXjL2BHnfm96/5lItMOgnYjq0JSY8qf6MWrPefKVm8fsdLED9+
 D/k+1qeCdE8bjN9cofW4VKzgFbs/ITG21CJ6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SzmNE6oRJq62Qe1EaY6AldKbjHb0i1Rbf/HXA3VbVEU=;
 b=YF/RUqcPhqErXvNp5jlOOur8ox+fvWDYi+dvfSBxFEj7u1xQR+W249qePFmyk0P0sv
 MAxGdGcGkaolNUD5j0V9WfO/DlOssdgL9eMsvPiEjSjt1tElT5Fbo2tjyZJ/bZXD+HlV
 aL2AdllOnzNeiQ2muFMhzlD/Jy7QfjY9sd+1G7W9jjwLN7DgEC5+fXGZecYipBB9aI5F
 gwPgQ96fa8kunH9nG5UnEqhC3tdoQEKt6JYNZU8i149DzLMo52SjRqbC5NzTl3MjdaB5
 EGMUM1ud+HsX3kyPVzS9aQTDGqCymrt369RNxBmzsXUbW4vWFaMN8fAZjAN8Dc6fkv7g
 jeTw==
X-Gm-Message-State: APjAAAXBGHfQbG27odXkZ7zr8DKI8oJr5IwOu0fuoc43A9hPFIHGMQXG
 bcpKmWwMPQ/kDJFUyFxyvM51VTGTQEvxqg==
X-Google-Smtp-Source: APXvYqwBm67/CIz4qeqMxwjQD8h6tTc/wO0SH01oe2L2jFD3ERnsINcunOSrE7A5Kbp0EAzCrICZfg==
X-Received: by 2002:a17:90a:b00b:: with SMTP id
 x11mr35937142pjq.120.1563278418823; 
 Tue, 16 Jul 2019 05:00:18 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 40/57] ram: rk3399: Update lpddr4 vref_mode_ac
Date: Tue, 16 Jul 2019 17:27:28 +0530
Message-Id: <20190716115745.12585-41-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050019_766335_B6F1E37E 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Update vref_mode_ac for lpddr4 based on VDDQ/3/2=16.8%

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 63763062f9..e3f1abf7e7 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -366,7 +366,8 @@ static int phy_io_config(const struct chan_info *chan,
 			vref_value_dq = (rd_vref - 15300) / 521;
 		}
 		vref_mode_ac = 0x6;
-		vref_value_ac = 0x1f;
+		/* VDDQ/3/2=16.8% */
+		vref_value_ac = 0x3;
 	} else if (params->base.dramtype == LPDDR3) {
 		if (params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
