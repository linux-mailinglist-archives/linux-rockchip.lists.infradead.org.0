Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129056A7E6
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YsDCZ6mmzGUFJuOs0WYd53m2ctHmzmRvRgR11uuHic=; b=nb/Q4eXgwTnkbH
	NCV6PX9Dv0fGFzWp6ywC0n2dMG50iMwy/7N7nDm7b+dc3DT7vYBXslX3erOQvcaeoEJqSk+RGWkeI
	MGphHZ/vgPM0eBlY74GzJce5kNN/IPCJAqgFzas/KjjzsCTXsZ0LzcnwgjA+qMJuAgls+NsmJDzai
	FH33J5WC1O2QFTb4b0cBDDTKq3iNNbkAOl9lq6T14qBDIw19/v0j2043Fw7bdFYhs+Un7/ULlUMLf
	TUg0Up6KQl1iolUHU1JYomk2EmKBuIAiIi+xw5/p4yHDS6BXKLQ5CbVL2tHuiW/Qhn1q2jUEGqocL
	8gTUCFssw5frtPyVedYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM7x-0005ws-97; Tue, 16 Jul 2019 12:00:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM60-0003fr-2b
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so8992688pfq.12
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8BogZbqP3R80fB7AlTvCAG5t45Neo/pGqiO9GVcYGEA=;
 b=dCY0FXfsAfL8lBQ5n0g9QoQT08WDilAkmTOiscYTECDt/JWMA25cu8L/TTTGHvopHh
 Gw+JQ/awjrSvYxR7kpa9DcimdCCLSue5vCKOrfijL+oBjpViJ6G7mYgdUFXdewkHZiP0
 DtdYYMViK89ZiAl/F9K4sggoPSufZhufI5iMI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8BogZbqP3R80fB7AlTvCAG5t45Neo/pGqiO9GVcYGEA=;
 b=HJPZc6ZWFKwBtmT6KSc+PMeflJ8lC+Tav3LFyfjHvkqQJ8VguyVb/6iCxZ9CQeP5qX
 RR/PzaYX01e4HVgh0D9wuh0air243YTVEBx9dZHOJCHPyY1zykiJwpmW01f4ui8ZD8Kq
 NMTRIAcgOhffmvjURxu/n7+gVfjwMPg9olHkQi9xbfCJx/eDvKQqFlGEdscTWEEe+eQY
 4ss0qkjmX2l3DGFnZ605DIXCWxapGPQEU/U308z8hNPLBr+nal854W04O/nXBYFuBKVK
 ge3pLBQbKmG6FyzUYmRiKrOP1dKpEaN0pI/p9Dn+MtEdl29IFqPC/fwvsMZn8F42U+p1
 3Ejw==
X-Gm-Message-State: APjAAAW4r+/jcil9ifOakX12FVmzQJwI3TCy/6eB3vE5XwCmqeuYGAq1
 Bm5VuJgrbCt4GjfErcxJCFOqf1dlJX+feQ==
X-Google-Smtp-Source: APXvYqzi/lMPydWmL+MIuq9QKJi8XE0PaWpwrH1lbDt2EmfrI2Opfur3CY3dc51TAebfY0NAeOeTOA==
X-Received: by 2002:a17:90a:8d09:: with SMTP id
 c9mr36387626pjo.131.1563278290740; 
 Tue, 16 Jul 2019 04:58:10 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 04/57] ram: rk3399: Add chipinfo macro
Date: Tue, 16 Jul 2019 17:26:52 +0530
Message-Id: <20190716115745.12585-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045812_169725_CC91B2EF 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Add simplified and meaningful macro for chip info.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index e5af3eab7e..2d0be920d9 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -73,6 +73,7 @@ struct sdram_base_params {
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_ENC_ROW_3_4(n, ch)	((n) << (30 + (ch)))
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
+#define SYS_REG_ENC_CHINFO(ch)		(1 << SYS_REG_CHINFO_SHIFT(ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << SYS_REG_DDRTYPE_SHIFT)
 #define SYS_REG_ENC_NUM_CH(n)		(((n) - SYS_REG_NUM_CH_MASK) << \
 					SYS_REG_NUM_CH_SHIFT)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d97efb6996..874e896369 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1090,7 +1090,7 @@ static void dram_all_config(struct dram_info *dram,
 			continue;
 		idx++;
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->cap_info.row_3_4, channel);
-		sys_reg |= 1 << SYS_REG_CHINFO_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= (info->cap_info.rank - 1) <<
 			   SYS_REG_RANK_SHIFT(channel);
 		sys_reg |= (info->cap_info.col - 9) <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
