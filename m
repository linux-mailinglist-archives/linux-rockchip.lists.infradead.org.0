Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FCF3CF73
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1f77En2KeBiJUn38qkW7mk7+uRD0IGu/kl8rcLZRFQs=; b=qxkwDQm7c2f5lQ
	T1tY+gL7MDMRJl2YE6IuqVL5v/v1WsDXik2iya0Lht99pJWegrMyiSyZLFsSnWqNssFR96vaPQgxW
	Wovf/MuxIdi64hUdF15qNK/yP7QW4/kdWWLT5uuUd6WIQEZA44uT8RE2k1puxWelLEsWE+bVBo+2R
	huhbcLSu/FcNgtA9OcJVhGKRwkf3/BjdLuf6K353k3MIozYfnadILK1RWaiU0xwp7bP6Jwi+9bDFx
	7zEQlHEhxd8sgb4VIjqevDb9iyKpcNinRkRAm0Hi8Z5Xa8sDmuOxnQjVwx1BJv4QTnXOlRAAi3ihh
	ZZWiiP+buy4dc5hh7TKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai84-0003m9-Fa; Tue, 11 Jun 2019 14:52:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai80-0003j1-AF
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id f97so5232157plb.5
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kUf6hry55EpeltHbc57IsStxotQiI0hZiJt888uW2bg=;
 b=hRcyNLu2s5Q8TnS1CI6sePiq2bRpE+q/HtKM6bzrIYqTPunhtwR1ONzZFnAEpKUJLL
 SjEaLyfYsDQmSMVl71AH2hf0kcJAuC1FtrYauEp9lTEjqN6bIpTKc1gpUl2IzbiN0rig
 +i2PmpN19PrP1w/61BVKFY4+UR3HuMz6G5vVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kUf6hry55EpeltHbc57IsStxotQiI0hZiJt888uW2bg=;
 b=Nzyxoak94Ug9OyQQh4Cf3iNDqRWvRPui83EE6tr7IzB523BPpzJhXO3fuzqNAk78lN
 65o9jUabsb8UsssrtOaF0tc9GH2v6LMpxez6TToOEt29mmIDToVHCI/50aS02LPaN0vb
 f7cCgoWRZGo1sD8/kRiWxcJJ9KMhIAHp4r40SMqv/cr0wLiiiquNs6fDuXXOU5p8i5xb
 N9WWcvqeNELp40Vcq86bnnZvoAipuvadMUaNwY4xGiCuyo6IiUSq9g3V/lbAk0MbQdui
 THVU7P7KKSAUdmHth3eqbexb0Kc+4bl9jnYB0rMFseQcD9lZ+yDhIkP0HQcI0hi2uP2h
 sRWA==
X-Gm-Message-State: APjAAAUEzME9eXEjhLf8G7MRwcPACpEiKbQkmH083d6PsJQkUJXU61Iw
 AJRED93K2NazuupnGUyAr94QcQ==
X-Google-Smtp-Source: APXvYqwYMB0iqGlS4n+NFRkpOHnGycDJz9TS9Gw7bToN24fe/P7M58ucHx7/td3cIJ9Xycy8ZeTrcg==
X-Received: by 2002:a17:902:be10:: with SMTP id
 r16mr14753578pls.294.1560264719523; 
 Tue, 11 Jun 2019 07:51:59 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.51.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:51:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 02/92] ram: rk3399: Add space between string with format
 specifier
Date: Tue, 11 Jun 2019 20:20:05 +0530
Message-Id: <20190611145135.21399-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075200_375946_FF1C322F 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add space between string with format specifier on missing
print and debug calls.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 541e4a4b1e..8191ab6176 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1180,7 +1180,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 	}
 	ret = sdram_init(priv, params);
 	if (ret < 0) {
-		printf("%s DRAM init failed%d\n", __func__, ret);
+		printf("%s DRAM init failed %d\n", __func__, ret);
 		return ret;
 	}
 
@@ -1198,7 +1198,7 @@ static int rk3399_dmc_probe(struct udevice *dev)
 	struct dram_info *priv = dev_get_priv(dev);
 
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
-	debug("%s: pmugrf=%p\n", __func__, priv->pmugrf);
+	debug("%s: pmugrf = %p\n", __func__, priv->pmugrf);
 	priv->info.base = CONFIG_SYS_SDRAM_BASE;
 	priv->info.size =
 		rockchip_sdram_size((phys_addr_t)&priv->pmugrf->os_reg2);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
