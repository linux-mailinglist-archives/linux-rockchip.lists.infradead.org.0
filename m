Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6D13CF83
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2tmAXeoP7SppPFnzbBu7oL81V7k7BPAE98Ocr3HzNc=; b=U/s1nz0LVRQLtB
	jIUc6QReyJd9/FT2BR1RR5wzL2lLA3xLH9Bza4K+ve4DB7OfE5YC8h+HYcHAPSZh4DcpWj/9YdHcG
	NWxUW3pB4mFQgjeSD6rW2CSsdeu6imUW02FmVzBiWP/HNQLHXHiNvD0RzM/EeyoH/r4cBYQ+ApX+1
	mLkVBqTYXLKoXw9YCTASQTMI5aPT6s3HcGbfs6gNaQHT6JdoYxSam5Se3jIMoWjMXP+Yjh13Q32+q
	8tXk21iOUMi4w5nrsDo90ZedAWzdSVgOiKKzj+TqxQ+WtHJjNHPsFLX7OBSYMrTo8V8/owdndNHOy
	d7CKX/mgyZaaB1cUgA0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8z-0004Pr-4Z; Tue, 11 Jun 2019 14:53:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8u-0004Mq-Ee
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so7573847pfy.13
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HRSwurai7D05BObAUlQE3Iz1vMMyKc3TU8vO7TNNVG4=;
 b=LO0Q6OJmLgNCSyDWbgxxx+vi4anP71pzMfEqb2r2WpLyDupSylQ1NamY6Jn5/2bwmu
 MBWE4yjmIJ5opRgbe7Oqer2q/UdwpKZ2MM50noX4DVOinScl/M0Mbg161+fsG0LUalof
 5AFCpL51m1ZoBLO2S2gsYSJ+4I0Mm96amOcds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HRSwurai7D05BObAUlQE3Iz1vMMyKc3TU8vO7TNNVG4=;
 b=TuiM/wcZ2DyQ4wfmCf1zrQtT1DAyQJo5TnKmSKKdEXQ+Qa1uRnE0wmAX6FtJUfSzzd
 PAgSokqrzOLnmutjS2Rdmnf1AA/EMFrs1xJLbDAIsg/fAxiQq2QfKULIMwhHU7AHeMSl
 5jdphbFgxIalRFjYCPql4YJ1SFpJuRvvyUAgXrhgeXRbmWOhv4ost+pO9CsyuUUVTGdN
 CSmGJnDqvqpBUV7RwT3fLbTeGscBF27IqErtsAl03mly6Nfsrpa7K2Oho1BOlI+1QgbB
 XnTE9p2W2mZhjsDz0By+iK8Z1pl7aZVCS00sQBKi7t0nx4tTAwVFVkIYLGPX0lT+xYf8
 6oTw==
X-Gm-Message-State: APjAAAXU29NQOcUV5IxYzJ+Oy69cg0AddEH7u9Jqsh7KmuSBJFl6MlPk
 lPdwoFfxBmBtzfBU0J+SN+ue7Q==
X-Google-Smtp-Source: APXvYqyMxYC88nLMdCu2miw7PFKJ/VmjEJD1ETwwDjahp/P5oP48PG7OhM54VJzJYjKHtgd1pIeY/w==
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr6440701pjb.138.1560264775502; 
 Tue, 11 Jun 2019 07:52:55 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:55 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 16/92] ram: rk3399: Add bk enc macro
Date: Tue, 11 Jun 2019 20:20:19 +0530
Message-Id: <20190611145135.21399-17-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075256_529659_628B7BDC 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add simplified and meaningful macro for bk.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 8e809e8dd6..8a71e8ad87 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -47,6 +47,8 @@
 #define SYS_REG_ENC_COL(n, ch)		(((n) - 9) << SYS_REG_COL_SHIFT(ch))
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
 #define SYS_REG_BK_MASK			1
+#define SYS_REG_ENC_BK(n, ch)		(((n) == 3 ? 0 : 1) << \
+					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index ad6c74374a..2614fef407 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1025,7 +1025,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
-		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
 		sys_reg |= (info->cs0_row - 13) <<
 			    SYS_REG_CS0_ROW_SHIFT(channel);
 		sys_reg |= (info->cs1_row - 13) <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
