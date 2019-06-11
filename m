Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F1C3CFD6
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyjFDkCRwa+ZCi6XYY6YKDvWftxKI4aQYS20sJIj4h8=; b=hFrbveCOv0JAC2
	0BILjuPKs7mh57SNLMaZzF+JxQ01e+wdT1CkFC0CmaUmu+My7XIPkgAqAAYIAhglogizeG8JDG5K4
	QGyoM4KKqRl99eJgapHTgeWDfXNu5tk11duV1I5wNL375s5HRSE9FknMMsDWPDyOX3BHO5Gyq2YHV
	SGrMly/iUFVsnRanKCpbSqnNO+cWH56r01Nb9Wj2wvTMxiUHEWWD4XerZcfMFLq9CibJQ5ADfIErH
	T/m3k9cM7AR5x4dxXAxxqpHaGZgAsnEDbIg5OeXdk6E7g+GkogfZAXUU4ybIWM4qxbr7FWXpWOPrk
	6B9rqP/fNXgBnNJD+ylQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCD-00082g-Np; Tue, 11 Jun 2019 14:56:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiC9-0007zx-92
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so7577145pfm.12
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LnrKP4ufWufAf+TSgUvgwMId8hTqzwuPYT4ERq3rBNk=;
 b=atxzZC9sn+WzeRMAlkaN7/YJEDhn6bW3f7L03lt80BNPqH7s3hhdzXPdU7uHQRnKHc
 dMQCg4uA7bPwr+uwKP/2ndh54XtU0BLYUx33+VOM1KVYF+e6l/DpgDa7wv++Sl5a4eXn
 zXYLWhfn3ZJ0C92z9OMtvBhH7A3DcCGrwq9Yo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LnrKP4ufWufAf+TSgUvgwMId8hTqzwuPYT4ERq3rBNk=;
 b=gYvBj61WHHfl66d9fK1o3FdJdrW7fXYHueRpVdWngxW2ECgOgAUzBv5ZAcK/sYVrbj
 LYkcUfK+pLLcHqETTXVBFeCY0Z7Hz1LlL5H6zJOSGCVnTVHXHZL3++zoOp+Kfyw3HAU2
 eEDX/LUHYFr1KPCdH58m5HJ4jB1uGqmLGIFkx4Bc69+sRkNX8n9jr3rwzJ/kZD0ZgWsw
 Pa1gQKvWhKvfgRgLtPPwQR2AIT5DYXV/eOlQZNG6dXzgNDar/0EovuuPzT3rKF82ylts
 erGoIvKgLc8IR2wdKBUGvi9r8WiNHjyLrhK3JbGKnsKF7zZ0dq5FXpKaPENWTOmMAUfE
 AE+A==
X-Gm-Message-State: APjAAAVdMfqWSgTKVFpnE+Ccn13M45yllL2n/QB1R5XYI318Y8Qdj/ZQ
 aIJxRVBNrz9SR8GrxFSlDi50XA==
X-Google-Smtp-Source: APXvYqzCt6Ysqy3WDYCl25Un3CSfpv4MZ8bTB78AK7aDf/Vxlz0tdw7zH198c6ZGpJ+3cUZjJgJcAw==
X-Received: by 2002:a63:5961:: with SMTP id j33mr4337823pgm.89.1560264976669; 
 Tue, 11 Jun 2019 07:56:16 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:16 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 67/92] ram: rk3399: Map chipselect for lpddr4
Date: Tue, 11 Jun 2019 20:21:10 +0530
Message-Id: <20190611145135.21399-68-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075617_317815_1ECD546F 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Assign desired cs_map values for lpddr4 during set memory map.

Initial cs_map values is based on the sdram parameters, so
the same will adjusted based dramtype as LPDDR4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 13c552649c..ecc215b9c7 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -189,6 +189,16 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 	clrsetbits_le32(&denali_pi[155], (0x3 << 16) | (0x7 << 24),
 			((3 - sdram_ch->cap_info.bk) << 16) |
 			((16 - row) << 24));
+
+	if (sdram_params->base.dramtype == LPDDR4) {
+		if (cs_map == 1)
+			cs_map = 0x5;
+		else if (cs_map == 2)
+			cs_map = 0xa;
+		else
+			cs_map = 0xF;
+	}
+
 	/* PI_41 PI_CS_MAP:RW:24:4 */
 	clrsetbits_le32(&denali_pi[41], 0xf << 24, cs_map << 24);
 	if (sdram_ch->cap_info.rank == 1 && sdram_params->base.dramtype == DDR3)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
