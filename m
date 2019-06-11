Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2729A3CFB1
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aaSkaOhxucmJMmnJsBJCTzOBja90KmwR6+it3CkP6DU=; b=Dg7G+VWO0ZAHez
	ylKkTpZSS1IwJuVNO8d1/qrI6mdUm8HQruhI6bwMEsADKmh34kSRuqFRst6UivclDq8GeCgeBPgFv
	DzebUaclp2WgxQXTrswpEbO724Ro/XJd+YEczA8g6WXo+zOcZf1rkmZwoDLvfjpcmTmW5ovqcy30p
	Zwo4vzpcrx4R9xGW8mzHnI79E82NwofsDzuq44iLwe4Rl6TsqpHMycXMOqNo2n3ig8V07/FliMGHe
	+XKXXSJZQrig1F6DWEcabHnS46+jG1fytWUeAsi0wfnCMRCLrAWjZE2Oe4MEF/U2+SPvtWMPmqHOP
	3WhQLhtMDbT7L3ZSSVww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBW-0007TE-59; Tue, 11 Jun 2019 14:55:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBS-0007Ra-EZ
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh12so5236318plb.4
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zCTHA7AbQTHQFenEvVby/jfWdGvdtti0ZUnuqqPQWH4=;
 b=Jmo4EHnoeloliwC3H/ZwU6HDKlPkakOEf1MTX7jQh7Ic8R7GVBC4vRfAWEo0GmfhDq
 2AvUGWbIT34ZJY/zbm5hz4KPV78ibRZi2m8dbl9+K8nk7AQ3Bx5noUHHeYLV9m7EFxKm
 MUDlVmIXJCKb1gIhceE1jyYE+8YvbObcDdR9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zCTHA7AbQTHQFenEvVby/jfWdGvdtti0ZUnuqqPQWH4=;
 b=Zp8Byps8M41E/Qd1gPLGyG060SS2Kg/6FkO/Dy5YT/WEGHK31/o8jO71y9kWC9BWfV
 U3EwSvojtp4YJSdx9sUDSyK8FPObJfx/iJTsKWTRiCqd20hrUP7UZ1xWwUpSOzek3sE+
 I3cCGmkChGWpfvFr47afWgK5gAw+wFIeRCNrVN+/hdYzzV1w3h9EshXKJ0X6Pvzyz+kw
 j+2965xCXgbgUpkISYl3ixxHqOqKief4VDjSQLgHGzDpvf8ePL27KjiRQ3Bm2edDU3c2
 B0ZTq+iiYBqxyxzrcZkeYIlmMPyada3TrnRD3tIr5IPCRZlDCf8CS7sXk/cu4PkdfzQu
 T9aQ==
X-Gm-Message-State: APjAAAUeEwOF8Ow7b6jfiZKEv9WIKq/74SH4dfBwHU0ZfVSyr+N+FvL4
 zjg5a8ICJQ0pVMiKMdQhnzPJAA==
X-Google-Smtp-Source: APXvYqxCuej5NmFfXXlDAlkthDsVJ/dHsFDVZBYiR/MNcw49lDu07EGu1hrWlNrCyw873eY/OnUTig==
X-Received: by 2002:a17:902:467:: with SMTP id
 94mr20751079ple.131.1560264933956; 
 Tue, 11 Jun 2019 07:55:33 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 56/92] ram: rk3399: Add spaces in pctl_cfg
Date: Tue, 11 Jun 2019 20:20:59 +0530
Message-Id: <20190611145135.21399-57-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075534_506130_2065C74A 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Trivial patch, add proper spaces in pctl_cfg.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index ce38f72374..7251532ad0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -559,8 +559,10 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	copy_to_reg(&denali_ctl[1], &params_ctl[1],
 		    sizeof(struct rk3399_ddr_pctl_regs) - 4);
 	writel(params_ctl[0], &denali_ctl[0]);
+
 	copy_to_reg(denali_pi, &sdram_params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
+
 	/* rank count need to set for init */
 	set_memory_map(chan, channel, sdram_params);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
