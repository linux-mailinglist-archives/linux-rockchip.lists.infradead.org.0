Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB56E1F797
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 17:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqShAfqs4NPsahEZ0TeJBM/WdWr1+V0gyaZ1B9h+byA=; b=hulYLVOmY6z0bp
	oITWZ6xy8M+0FElrdPwoucKeqO1wbv2Dlqd5KfTNo6xIcRZwPA6xe/PuiPG8IkC+TTILLwPNQqsB4
	hnv0TsHESw3sx8oH7oKRJAvkassBTNqu6u3iaWrCeWhtAa/e0aEavFRb6yxOQvqZds/dmrk0LhqTY
	fjf8GcbA9K1umDM9vSb6RHViR1BBLzCU/yoxfQyIQgTagm0eb1Ja3L4ERwBQTq1mjR+tKWjOSQKSS
	btNL9QoIDcoEM33m1e23m8CHPjqhiG9T54qL//Yq6FzMe62JOp5cvx8o82+xC14gR4BcV7ZE9n7re
	gw8EBwmZC7E2RxKtabMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvsh-0007vs-Io; Wed, 15 May 2019 15:31:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvsX-0007mh-9i
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 15:31:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id a3so1558828pgb.3
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 08:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SQsgM6LD4OGmyb9zuec5UbAtvnTOoKL54DBY7H0uK1U=;
 b=daAtSqCJ/oTaEYkG59u3o7jjY8qmxpZRWzhLXKwEHrXH/u26lAXnoFPkn/uCG/Sl6k
 UwbWWhR3FdnriNAjE2O7MvVmW1YSlkjnNGHYNQZXSckOluh1bP7799pE5M5xRw+A+4aZ
 ZTEZR3k7vhKDR6vgJEFTaz+4TP7QaLtvPz+jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SQsgM6LD4OGmyb9zuec5UbAtvnTOoKL54DBY7H0uK1U=;
 b=JS0qud45CB9Dn9CPuIPoN0PGJJ8Yti8UM11d27yYdoSGR2/HS0feb957l4nmZX7yfW
 M73WKTAdWfns7ha18iUuqaLc0oVMaqEKXQRpkgCFG0eRDTLPjNvzw1YPMMpd6Xu53i3c
 Z83K3ljCwrErTY2deA38LLVGN6276YJN8DoCaS6n953ShWX3Up48gptTBSf7pNiwQGRo
 B4n/XE6OopgIPnx2ByT3rTPNYgHdpLz+BUeg3VZdbjzJ7ELG2iNkzXb3E38egbIl7cSO
 F01dpLdC+BGs/+BpRPes4JqG3rXX+FBYeDKOOTnTopScKmSskOZE3t5Wqr0psvnuHzbB
 K/cA==
X-Gm-Message-State: APjAAAXgDpJpnem95O7FFpYxoQYXcr5sxIkUUxwU48kMJriYFYPibv6V
 visV9pxHyUOd9+3qLiF8gp7Bfw==
X-Google-Smtp-Source: APXvYqxOUzLo/if+h9XIHzCEFeYe9LeIRDutH5jCNlO5xeuGnD6kyzTn/1KEjr7JOey3ewert2okdQ==
X-Received: by 2002:a62:164f:: with SMTP id 76mr48532016pfw.172.1557934296145; 
 Wed, 15 May 2019 08:31:36 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id e24sm3792704pgl.94.2019.05.15.08.31.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 08:31:35 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] ARM: dts: raise GPU trip point temperature for speedy to
 80 degC
Date: Wed, 15 May 2019 08:31:27 -0700
Message-Id: <20190515153127.24626-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190515153127.24626-1-mka@chromium.org>
References: <20190515153127.24626-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_083138_610362_A437E850 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

UmFpc2UgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBHUFUgdGhlcm1hbCB0cmlwIHBvaW50IGZvciBz
cGVlZHkKdG8gODDCsEMuIFRoaXMgaXMgdGhlIHZhbHVlIHVzZWQgYnkgdGhlIGRvd25zdHJlYW0g
Q2hyb21lIE9TIDMuMTQKa2VybmVsLCB0aGUgJ29mZmljaWFsJyBrZXJuZWwgZm9yIHNwZWVkeS4K
ClNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgotLS0K
IGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyB8IDQgKysrKwogMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12
ZXlyb24tc3BlZWR5LmR0cwppbmRleCAyYWM4NzQ4YTNhMGMuLjM5NGE5NjQ4ZmFlZSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCisrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cwpAQCAtNjQsNiArNjQsMTAg
QEAKIAl0ZW1wZXJhdHVyZSA9IDw3MDAwMD47CiB9OwogCismZ3B1X2FsZXJ0MCB7CisJdGVtcGVy
YXR1cmUgPSA8ODAwMDA+OworfTsKKwogJmVkcCB7CiAJL2RlbGV0ZS1wcm9wZXJ0eS9waW5jdHJs
LW5hbWVzOwogCS9kZWxldGUtcHJvcGVydHkvcGluY3RybC0wOwotLSAKMi4yMS4wLjEwMjAuZ2Yy
ODIwY2YwMWEtZ29vZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
