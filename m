Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2660E23DF5
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 19:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f50f8zi8zoBvVaK/Qwk22M8m0MEp8sZx0wHGv869LHs=; b=EUWbIaX4q7m0D4
	KTJh3GRn58NbMyUBimsmnodbcaKYVwC3Gh8/wh+i16/YJqI1BLti5UHPKZ6k/gzJ3Yl0Lsh2DSo2D
	YSVDBVTBtr3a0gaNaNEjEzjf9EgJKSBwvRWhb/RfGNsq0t5lvQiRPB6wEiiee7CRxLGHwxs3bkzVP
	F/CAspzHa9J0fCwl2a/4g8Ls6mM4leTbl7v/IZhRJLzSkcblyXE4AHtFrz2Eas4OkIEWhhDVAqkr0
	mTd1/M0gHdIQdnFMeSuM8lH/DZM8N3NcoMglwkKgjs6j6qxytrNIIaivo5nCE9KvNnawnpADbrmod
	TU+BeCAlrsFFet1D20Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlfT-0007BT-D5; Mon, 20 May 2019 17:01:43 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlfQ-0007AA-Du
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 17:01:41 +0000
Received: by mail-io1-xd41.google.com with SMTP id m7so11609945ioa.6
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 10:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x6v5cZ4d3IbzzHyX9tB5SggAe9a0MLVJDqe4K+VrolY=;
 b=DgcBl8Smh89XruihvIIqo2/jwlRNXKwzhoakXmLzoUDPce90oG/GyzQ8l/jtA2OL0i
 SEXXSDe8NSrl1QM7MqUwkOtgDOh2Gr66AcXniCOv8ZqSJbDbxRvzXncS4+WdSFomASNH
 WfY30ET7xT7NYiS1Z1z8P77Zabz6rKiUmME9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x6v5cZ4d3IbzzHyX9tB5SggAe9a0MLVJDqe4K+VrolY=;
 b=Duw0g58tB9hSVSq60G2falEj+3iVAk/C0HG4JuNAJd2SqWaWvh2xb374wu/FXpQs6w
 Q2Vlzs8w2/SEo7aibY6tImydITYR5wuUEsPZREZSGRQCCde3X+BpNUsruyBqF6Ddm+iQ
 gXxnit8aE1vke9Vp6DkFLejR/xZHBLRxaAL/PxnF2lavmq9h2eR31irXQRfZpuBIH6HG
 WO9XplYh4Lj6fELk2OF6sS5vqfQyPoAb+pOKMNP2OiB0x6SvvRfFsFVxQbmfqsbJ8uH3
 PgQSLRPBpobz9aNhLjSeAeq6MNej7gASQE7PTfK+wTUw87VNLvhhduuLs3G/hrtqllk/
 IuAQ==
X-Gm-Message-State: APjAAAXm/wcSWbNR0GA9Un+L7GJ2KO6om5nWr/hvrifSIVzi5EuAQAtp
 /PjhYl41v0abbJWV+quXNRD9jg==
X-Google-Smtp-Source: APXvYqy0W2gpclxj4ZGsAs2T9LwfcoVY4dorBvuLBx7NxPHNi4Rs1l+AN5UkFsEt4Xy4HrBvwIlWAw==
X-Received: by 2002:a6b:2c94:: with SMTP id
 s142mr25278871ios.302.1558371699238; 
 Mon, 20 May 2019 10:01:39 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id v202sm25015itb.38.2019.05.20.10.01.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:01:38 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] ARM: dts: rockchip: Limit GPU frequency on veyron mickey
 to 300 MHz when the CPU gets very hot
Date: Mon, 20 May 2019 10:01:31 -0700
Message-Id: <20190520170132.91571-1-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_100140_495656_43599BEF 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

T24gcmszMjg4IHRoZSBDUFUgYW5kIEdQVSB0ZW1wZXJhdHVyZXMgYXJlIGNvcnJlbGF0ZWQuIExp
bWl0IHRoZSBHUFUKZnJlcXVlbmN5IG9uIHZleXJvbiBtaWNrZXkgdG8gMzAwIE1IeiBmb3IgQ1BV
IHRlbXBlcmF0dXJlcyA+PSA4NcKwQy4KClRoaXMgbWF0Y2hlcyB0aGUgY29uZmlndXJhdGlvbiBv
ZiB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNCBrZXJuZWwsCnRoZSAnb2ZmaWNpYWwnIGtl
cm5lbCBmb3IgbWlja2V5LgoKU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBj
aHJvbWl1bS5vcmc+Ci0tLQpOb3RlOiB0aGlzIHBhdGNoIGRlcGVuZHMgb24gIkFSTTogZHRzOiBy
b2NrY2hpcDogQWRkICNjb29saW5nLWNlbGxzCmVudHJ5IGZvciByazMyODggR1BVIiAoaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwNzUwMDUvKQotLS0KIGFyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5LmR0cyB8IDYgKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmsz
Mjg4LXZleXJvbi1taWNrZXkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1t
aWNrZXkuZHRzCmluZGV4IGQ4ODlhYjNjODIzNS4uZjExOGQ5MmE0OWQwIDEwMDY0NAotLS0gYS9h
cmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLW1pY2tleS5kdHMKKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzCkBAIC0xMjUsNiArMTI1LDEyIEBACiAJ
CQkJCSA8JmNwdTIgOCBUSEVSTUFMX05PX0xJTUlUPiwKIAkJCQkJIDwmY3B1MyA4IFRIRVJNQUxf
Tk9fTElNSVQ+OwogCQl9OworCisJCS8qIEF0IHZlcnkgaG90LCBkb24ndCBsZXQgR1BVIGdvIG92
ZXIgMzAwIE1IeiAqLworCQljcHVfdmVyeV9ob3RfbGltaXRfZ3B1IHsKKwkJCXRyaXAgPSA8JmNw
dV9hbGVydF92ZXJ5X2hvdD47CisJCQljb29saW5nLWRldmljZSA9IDwmZ3B1IDIgMj47CisJCX07
CiAJfTsKIH07CiAKLS0gCjIuMjEuMC4xMDIwLmdmMjgyMGNmMDFhLWdvb2cKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
