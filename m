Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95FE3CFF3
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ewwe0VgOHFr5JCjvDihkkRlWidikbK1O4RNGD2ev0Wo=; b=QUeV5rfA3EylPa
	ZkjnWdXAOxd4HqZEcyPDEvXNnK8/EW5rxe5xnptJOiaoRfhjQ2lpszhNnaSgqb3KwZFb/vhw2/N3S
	6BzOMJonH8Z3EskdXxKOXYnIXMsgFxmlFIYJVcthxW4UfgOe7mrkAeyCHFumrB/HZZ3bACVsIjmaX
	8x5G4A4TtKTAdmdlobYKFiLuNUGhm7wFbLLWY2m73mzagmXqM0UVrs3cSzENITmRZFfqdzCVC0CDD
	Mz2/NRlI6BZn3fL1ZckR8+aZi3a6uKWuKYQPZHNWufwH//G6DBzh3Z2J10D++mZD4kGB+gzxEV/wI
	mDJLSkXB8EQe8QaapINA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDE-0000Rq-15; Tue, 11 Jun 2019 14:57:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiD0-0000HD-JU
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id a186so7597653pfa.5
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DPGRrQseEV7fRp15l6glCYd3VAIDrHx8CUe7joMScwI=;
 b=F03rGZZpW8bR94IW0JL/TIVO/NYw6MnESJ+6OS2od4PHGZ/aUeLlKfV528sn+Vqkaf
 UG+YaQoonLnqGlH1E61AfMid0IthdQgx7ZEvLFH6mylner7+sZqzn5EAxyfp4gjXUoxf
 43MIcCGYgBz/z/pCt7nBLSs3FJJkLIbWxLwGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DPGRrQseEV7fRp15l6glCYd3VAIDrHx8CUe7joMScwI=;
 b=OHjJ1TIYyExQOxeJaxbblbDlj26uLEwdwkpNukEUO5PPAOlcbvwaxncYrB2JczbX2w
 EiNB1/zXy5L1dPYalhMfbPjWYG5Bc07DkscYr94sOv/7aqBHbR7aIDA0k1MO2dZrLohJ
 ZufKf2xxfmu0eR8cDpwTnDFI7qLgh1Yvx88AiOF78X5EqFJGmpMFDbdrlw2QeZzpPQxA
 OzjoT5CTyK4aV1bOQBCMSnGWFPH8vESD4GJPLx8jURGMqQplDYKdBvJcafkNg0/NNi06
 bmudiyIPyIhnQ5JCCVsc4E83JEHI9AMm8zy7CuEmt27HV1d4brqdBpv/OaReIuyb7OWm
 e9og==
X-Gm-Message-State: APjAAAU84XayiNDO51gEjEcdrJIlZh0zqVmsYRCnnfs+tqh+DzOkIOxd
 FNm9YuUMQcgR1PSgdFVbPrS6/g==
X-Google-Smtp-Source: APXvYqzOz5NFl6mObVgv0nlmKFpa4oI6FXRbS1tC2mINdk+jn/2+Gjnx+4uvNfXjPbORuD+U7hS7AQ==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr20791067pgp.372.1560265029983; 
 Tue, 11 Jun 2019 07:57:09 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 81/92] rockchip: dts: rk3399: Add u-boot,dm-pre-reloc for pmu
Date: Tue, 11 Jun 2019 20:21:24 +0530
Message-Id: <20190611145135.21399-82-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075710_754587_21F8579B 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
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

Add u-boot,dm-pre-reloc property for pmu in rk3399-u-boot.dtsi
so-that SPL can access pmu.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/dts/rk3399-u-boot.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index 0786c1193a..31942899f6 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -3,6 +3,10 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+&pmu {
+	u-boot,dm-pre-reloc;
+};
+
 &sdmmc {
 	u-boot,dm-pre-reloc;
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
