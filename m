Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968A74CB8F
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 12:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mb3rKpnbdKrC+JBm9L03a75nipBdwLJ5yikmoyv9Usk=; b=dXAt1EDZ/tC/69
	eTS1IJAwCGFrBvkC3u6Y3T1lwT1N1u8U1DcVY4QthmxxIhFtiN8uE91rcHSYnJeX2XEPdyKeYv3WY
	AQMfZJ3bTF+W03OJcXIKwma+BYFBs4nPl5H1Wc8VTqHHQTjAJB/qTW+MxOsRaHR+/PUjW0hkn2Zpk
	L5slwbJyha5siZwQzBNJoNuq211K+xye5LqrrDdXaNvYdSQdaLUSJkXMAD2Gf28Mst7eXaRjGP+k5
	39sF8o25x1p1YAocO0s0YhcfC0QRUELsspI1zWD8fC9oKEtskRGs40FYNf6mkEfqZTIZCxtXMRPYb
	2t+4aRLIUQhUh5gViWzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtzX-0006Tj-Vn; Thu, 20 Jun 2019 10:08:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtzC-0006EX-5H
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 10:08:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so1388527pfe.6
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 03:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SVhuJQYXib9M0BWgaROsi1M8QbxK1XXxoZLiJe0nmMI=;
 b=bqblp5XdKpEm58CRKOjyW43YReDEEoIBcck15yKQqbuyj8tFXhFdFm+3f9G3oAsbl+
 pGGJFRkoNi3LpX4Nk+J88BNvie9CQ//XzUfOmCkvz43D7iVAyIMPEkMNe6NiaUXRsbgw
 Sq4COl3KDjXtwiNRx8CvBu3mkIVxwwE3JyK0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SVhuJQYXib9M0BWgaROsi1M8QbxK1XXxoZLiJe0nmMI=;
 b=ACM+VDz2hwfFC4T1ngSfl/v4UH3wMHSThe679zArhAARVU/9ZaVsQnkpbIeXzvaket
 pltsjN2WOnz6NalPfvmyT6oLnP41N6G7KS1oNvF8ZyVtYO/I/1ElbXOKDsew9JaF2ueu
 BpqrGUklI4uNqypN80EFVIauOCH8+8j52RTDvaP/6wMSin6IkibYyFrBGl0Xeaet3wnc
 eoMen6VceHNs2YgPnIwJbIUxFfqUajE7ZzAV7602u6zmE4DJrjZ2yfhvNrgSVqU71MSc
 /IodVH25970fs+sSjKwClQVWS45JQTGtX2MygrZvv662iuJELhLJZLh53APSWrxZp9VE
 fmzw==
X-Gm-Message-State: APjAAAW69WPKz02NhjC3JHBSSFmxBy3vi3zp3QfqkpDUTswxQU50B3vE
 AAlg962fOGPCcFASyvbH36EXcdHQZkg=
X-Google-Smtp-Source: APXvYqwaDqCm6sEb2yabc/uVf2Z8f5Tk1ImK3IPXkSMOSWg4c95UyeThjZoj/x48tdTW4Zp9ixZJLA==
X-Received: by 2002:a17:90a:208e:: with SMTP id
 f14mr2277560pjg.57.1561025285535; 
 Thu, 20 Jun 2019 03:08:05 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.140])
 by smtp.gmail.com with ESMTPSA id x129sm21731387pfb.29.2019.06.20.03.08.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:08:05 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v4 2/6] Makefile: clean bl31_*.bin
Date: Thu, 20 Jun 2019 15:37:36 +0530
Message-Id: <20190620100740.6560-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620100740.6560-1-jagan@amarulasolutions.com>
References: <20190620100740.6560-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_030806_214422_B13B5A22 
X-CRM114-Status: GOOD (  10.47  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 804eb2c652..a503ab9fc1 100644
--- a/Makefile
+++ b/Makefile
@@ -1848,7 +1848,7 @@ clean: $(clean-dirs)
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
