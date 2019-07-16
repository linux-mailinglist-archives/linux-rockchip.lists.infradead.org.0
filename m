Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CAB6A7E1
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 13:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJrEaC8BIsPwGs+Zv0qZJPG2dVOOAnWAL2g1lfFbp08=; b=Xc3WhvmSNeW8SC
	pi9qeH+BaYJX7DG8Wf7fKGXyM6lRN5SIrNInrlmIsvGyLlwVxVR4wLMkENfV3+3VoP7LJjSDUi+nA
	0Ihmjr1sHfxyole94Vel4ILtMkqdcK58iKpZrsLWhs2lFY8ovwWeehAcaEA4/mwpsjJvYX071YUF9
	ljA4XitF2c5K23fioy5QuL0ILztRrdvjxfT9dh0Ws4QUAXkwFSfqAg+axyQXnRr7xg0ZYq29uUfnl
	xZmMbLog5PCRvJcEli4Pags/e903wN4zfWlNmepXi6irYFl2HzRup1OeWZHMF55PGgVfWhO103rHF
	NUWPYstr3JMHiA6jxsww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM7W-0004un-C9; Tue, 16 Jul 2019 11:59:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM5w-0003dA-M0
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so9999351plb.9
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R2Xvx+xaEN7GG8Ut0L1/mXHTaQYOC5n4Pflx8rX6nbg=;
 b=QZmjDZ+sV+/a1g96PFw0AmbcNinFvb/WU5PxhW4+xQkeYrO+EEgpr2OyVlOk0hMNG6
 Y4Zif5fbqf9F1Hm0bxhVEjpOsmQpYtbevcu13fe1EPPm3cVqWFmFMVeYi6hRYYRNphpB
 Twdd3ADTlQUQvOW1cLkfVXuSGrAdug59dkhfw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R2Xvx+xaEN7GG8Ut0L1/mXHTaQYOC5n4Pflx8rX6nbg=;
 b=Tdd+Z2381AzkRV8zFZZItx1hbrJi2RtxCfuyX9jaT5nW9PF8WPvgK5RpNtiM0xBt75
 rTdwDKl0oQssaei1J85tpnntCZyfmTOplIJ6mu7li1DjI1eFSwYKnb8y0Ib+xMftgeS0
 GjDURUeMJuiQmNGJxDLbeFKmIRh1DZ6hlBY+zuX40x37dupNHWMPSEIho5NJ1FTGPEBF
 CQ3u0spY43ynrn6f83YdprorNl+zyKDtX5aE6ORhMOKy7BPsDlZ0MJF2FppQkbJw+XJB
 900yxUTgzshUXrm9jCb+Rbknw/dE9NCCy2SyyWohG3bcSvphC1fAX7E/JEqXI2hzvcnY
 3HXw==
X-Gm-Message-State: APjAAAWh4chYpecJQdVNlVCKRyAjGFEslnwCO+88SJr2hTFWnCc/NFEm
 uwoLDs+uBItZB/6VPBPIwdJkgg==
X-Google-Smtp-Source: APXvYqyT8FBVOAnOMbrELCKEwqkwbYTtCk6YPc9wfrhCUWG/vnDuxshl/GnlXQmHytBiderqfL3ong==
X-Received: by 2002:a17:902:846:: with SMTP id
 64mr34833017plk.265.1563278287322; 
 Tue, 16 Jul 2019 04:58:07 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 03/57] ram: rk3399: Add row_3_4 enc macro
Date: Tue, 16 Jul 2019 17:26:51 +0530
Message-Id: <20190716115745.12585-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045808_741750_812C1D7B 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Add simplified and meaningful macro for row_3_4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 076afe2ae3..e5af3eab7e 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -71,6 +71,7 @@ struct sdram_base_params {
 #define SYS_REG_NUM_CH_MASK		1
 #define SYS_REG_ROW_3_4_SHIFT(ch)	(30 + (ch))
 #define SYS_REG_ROW_3_4_MASK		1
+#define SYS_REG_ENC_ROW_3_4(n, ch)	((n) << (30 + (ch)))
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << SYS_REG_DDRTYPE_SHIFT)
 #define SYS_REG_ENC_NUM_CH(n)		(((n) - SYS_REG_NUM_CH_MASK) << \
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 830311ffa9..d97efb6996 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1089,8 +1089,7 @@ static void dram_all_config(struct dram_info *dram,
 		if (params->ch[channel].cap_info.col == 0)
 			continue;
 		idx++;
-		sys_reg |= info->cap_info.row_3_4 <<
-			   SYS_REG_ROW_3_4_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_ROW_3_4(info->cap_info.row_3_4, channel);
 		sys_reg |= 1 << SYS_REG_CHINFO_SHIFT(channel);
 		sys_reg |= (info->cap_info.rank - 1) <<
 			   SYS_REG_RANK_SHIFT(channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
