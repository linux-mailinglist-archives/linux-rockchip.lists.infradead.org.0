Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A963116AB3
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+yZbLF+TVwukc0M3Pr8XiG/Sk6FZQ7NpzElmxwdF7c=; b=mOp1inXQLZMrBj
	DaoTFH6diJaXehskNOFoi9apf2OI9YevGxECyLRPDspaJR4tZ4fOIK+Hn2HKM35HfK6/2MabjCt+S
	OP3vre/hBM40uYy9mVYFRn/6vGhWvp0AmcSE5N1qhXEsIHOm+jdmNfdV5dafF8Eo1+xH9G5EuY/Lr
	w+Hu1bhyam6ix3KYNy815IRxYsNV7gRr6jgalYawXxxd36SEJpMFo2hNcA0550w2i/4zE+/nA/CNv
	VCJLbfo1dY68d3e8XeHEwfW9P94UHGlJ0HjWSfq6TYuqB32iVUCkK+Kn73V2GDk07TYCTtMafjD4w
	SdnCaw/ZNtOQtilvHt9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5DL-0005qT-Po; Tue, 07 May 2019 18:53:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5DI-0005nz-C9
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:53:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id bi2so8613093plb.13
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5NdEw/MFl+V1N8bCDji05Xp8skxj9vixXwwnqbrnruo=;
 b=LgTavitKD0+ytd6ZGgZyETwYtpL/cQsq1Pc5YrDe/k0jyRpv9tkbLROFQZW/nc1uzL
 GMOpEC8IB0LTSFJBseewDFYtX7LlxKDd5iJCi8QVyZCGYle0E8liexnmebwykmDr6T9B
 NtFaZQyl5j9Xz1xW0OFMvd92M+mEyrUxUY0Hc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5NdEw/MFl+V1N8bCDji05Xp8skxj9vixXwwnqbrnruo=;
 b=IKuTeWU4hFtGmjcqxJULTu2J9ICqgSOWN8+k1IyWyDpK7jnr4vpsBd2albRCtexF8V
 Edu+HSkcOqKNH6egqjb3Q3QA6R8EjG/rwwaBNW1mpBtWWQefb4beZ1ayVT8o5FCdXLW3
 wW0AFO2PljEcihKGEydjfzHBeDQdUe6M7L056ncf9+wl25ydfPSucjAOBc9D6xhJ7kPz
 YA2uFuVV1HMEiQUMWPENihCJZNKLw82pzaw9pT2QmXloykzHeKaSn7nTNJuUjiwYcXxO
 +cmvhO9jdI0nxMEL2pI/936aoSHt7QAu48OqB41RwxlvVG05qlUn3pHGBsHq3BS+4kh8
 VQ7w==
X-Gm-Message-State: APjAAAV9rI/T0WuYVlkjnnB2z6PTBzG8IvuEOObfbA/O/1FFJPV6ZHe6
 nzgiVTyEFnUxufbppqJRNXJg/Q==
X-Google-Smtp-Source: APXvYqyv4qBgoWYiA+4VgHlfafIQmIYUG0xG0zVsuIWmD4RXnS4iKQAa9c5Gma4bt1tzOBRrfdQIHQ==
X-Received: by 2002:a17:902:fa2:: with SMTP id
 31mr42827839plz.128.1557255195730; 
 Tue, 07 May 2019 11:53:15 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id l83sm14668086pfi.150.2019.05.07.11.53.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:53:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v3 2/6] Makefile: clean bl31_*.bin
Date: Wed,  8 May 2019 00:22:11 +0530
Message-Id: <20190507185215.15441-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507185215.15441-1-jagan@amarulasolutions.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_115316_538849_C54E5C85 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
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
index de11446ed3..64c7976f7e 100644
--- a/Makefile
+++ b/Makefile
@@ -1814,7 +1814,7 @@ clean: $(clean-dirs)
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
