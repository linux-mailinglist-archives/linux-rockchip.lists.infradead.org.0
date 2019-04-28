Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E48B5BC
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntRgAPLwMesOaT98nHhA+SVYzlz4wQxW/Om5r5gf/TA=; b=dCLLy7+BOET3JN
	P/G4Tce0yDnrEzwxj5TW7i47jcBm/Fz0N06vZs48pKlHCckwnFYN7+F08CtBtSQrjY8O2FHbe8q2n
	JC89d7npWsOylkHHZD0CPWKwa5JLa+jEO3iKiM/fDiKJF5Q5N05UIbKjjfbQXEENVg9peKTGadW+m
	irbRaxpafA2hmIdph9dEFCMkHjL7J0xQW87EZxLFNiivXD26BeHIv8pp4dsTno8UFo0F1sT7HBdw2
	7IiiVf44eW2qnb1BkX1W6yansJMWM+pRrnr6JYzEMNSUc9YJjn1ugGemmC/geBUPoITo0wozlLb3W
	AXn7DLqdpFuRTJ7eYrXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfoZ-0000rz-Qi; Sun, 28 Apr 2019 09:09:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfoX-0000pG-4E
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:09:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id c13so2733253pgt.1
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l78wQw2FrFbs7HVkEO1pmaqFMcARGbget66qc4bGZpw=;
 b=k1MUIcVUJtFHE9Gs2F/OEoWGSJfivvWZjsx76XjHKPhUfdLkXnmwk6Bc5rmBCGfm90
 MxUCamQvugXR99reORw90xR3m3LWZbbYePL+t4Z50FzFxvCAnfDkSFUhBmzQtwg15kRM
 uXYHOgyoP4aJIJ5kdSVYTuuHzedswkLyzuoHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l78wQw2FrFbs7HVkEO1pmaqFMcARGbget66qc4bGZpw=;
 b=MxjZk+I5GZs1cYChOBi7ekIPfiMpCAxF5cfEzcQYWbKfiHhaQjj+teh+UR7U627xaZ
 VS4BciJeVAcXQX/wPN4tv6Pds14JH0ZozCbBrbFguKLJchn4mbCINtPeStfZ/rSWlMxA
 DcLwvPEgIh4U+KHTo/qfXbAky7d3pdhHF7nIPLfKF5dw1c4AZ/m0flWmhKplj6MMb16z
 QhlHCps8Ttt1y+koDgLnHeMTiMsTccQBdaEeQ4A1R/bR4mSh5D8HxZzPJh1h9PYqjJT9
 sbwBiwk62/zQbUML6zgaH0lA6ZleYwKYJs5BtvbftlYKKbUg0q3Y+8hR/2gW9e2Lp8pq
 S0hQ==
X-Gm-Message-State: APjAAAUoZc2KgOMnfWO3n3Dsw+eqQfK3U0+EyHbkU+LLA4PXmzO9MlrJ
 hlNxtINvpRIfXAX281Cmg/pdVA==
X-Google-Smtp-Source: APXvYqwB421rzy0ATJEhwelqOgnPNEj/wTjFNbDtZ5vL7i6ahJNpUV+sFBYLFbYZ0W2CDlpCPv4jXg==
X-Received: by 2002:a62:f24e:: with SMTP id y14mr56907511pfl.209.1556442575512; 
 Sun, 28 Apr 2019 02:09:35 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:09:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 2/9] Makefile: clean bl31_*.bin
Date: Sun, 28 Apr 2019 14:39:06 +0530
Message-Id: <20190428090913.10568-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_020937_167924_8165B229 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rockchip platform has its python script that would generate various
bl31_*bin for creating u-boot.itb file by taking bl31.elf as input.

These bl31_*.bin files are generated in u-boot root directory and
have no rule to clean it up. so add support for it by adding in
command entry of clean target in Makefile.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 54e8fedff0..ba0cce9f33 100644
--- a/Makefile
+++ b/Makefile
@@ -1782,7 +1782,7 @@ clean: $(clean-dirs)
 		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
 		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
 		-type f -print | xargs rm -f \
-		image.map
+		bl31_*.bin image.map
 
 # mrproper - Delete all generated files, including .config
 #
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
