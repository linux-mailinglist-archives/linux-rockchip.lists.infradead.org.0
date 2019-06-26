Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE7156806
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Jun 2019 13:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tc6DbsRXo5MVrPBOetmKU3VniD5YBZENNkoJfldQyco=; b=uXraqHX9wc1O4R
	7LYK5W347ZcWwi7r6jdrUzASWTBlEzNziBLuo1cwfD9M6Rye01S4tBtLzYfCm4XWx4viAUHfLw6Is
	+0kV9OwuJDJVMe+vZqRDAkiGrwhd4smQwCuTrZYBMcmXfsdqem0v/4SBIvdC0Fnsm8hVDBcjWx0r/
	IW+6KQ53FiqHai1a1JdBzNmu9BLUxmsDlCWbboVdX5l/EOQ5cPrXzgNyc6AIy4Th4jDq+z0qiD6V9
	aTYjyGCOq7quqWvCcURVUbbEzqihzGlq6xgNiemxLFdZZTQaIA8PhkK3OH+BlP2N9IUtk3OddEtR+
	DRThPWalnuQyD4q63F9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6VL-00056Z-Il; Wed, 26 Jun 2019 11:54:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6V0-0004tz-Ba
 for linux-rockchip@lists.infradead.org; Wed, 26 Jun 2019 11:54:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id k11so2427807wrl.1
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 04:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=T1u8/nO2ihXA3qg4xnmoP2DlkB1dnveETSZSrMNRfSE=;
 b=oEEPl7PGp2yDGgQlpMIT9CDuA8EaBW2aDv4LKDx3jzAasANl+MgbubGI8TDqHbuRNy
 XfivoVJgBZ1Bep/dM5tMDxCu2yliu0Ff0UxJDZrHJ4xRmQYRga11k/qthaUoD2zgt2bC
 ceMy+Db8M+Lmut5drD8EUrPFy2Rb+kwGy2B3BV/YYU2egpNRi5myDVorKaXRBrEg62Su
 vPCNQoLMWtVv6nTfJseJmQR2w811Z+fiWY6MWZ7hM09+xLVsub4wmhCAtKivMnIUTkA6
 YRJL0JX+NuYiWCOy4/S6xgcC7Lt7BD/Apc6uiHhXtC36D2dvKZJRGAtc/LdEhtgmdIYj
 eioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=T1u8/nO2ihXA3qg4xnmoP2DlkB1dnveETSZSrMNRfSE=;
 b=S/gU+/LzTn/L5vrbipzcZU9TBK/ar4nnZxsFxkVJ6M1ftQ0ZUiml5l+byf+p/j+SuC
 cTiUuTD3j8G24soPaxSKE+KZ64z7nIO9NvQZOqPmRCXMqFGEKlIqBWCjjpoaGSyWqxDf
 3fS3GIEApTmdbyyCLX76zzLuQIKa1Xf46EzhfHSaLsC6eLYC2J9l9O6G+pt3SPt8Tmge
 IA19efmdxIe7i58xqqH1QtjEDuxs9v1o0Kr6sKHJR+PiQnj/C4G+L3FydiCg+tjsI0Jf
 oler7+xjEU1t0obUtgtMczjcaSAvESh3/H+WLW5HjUYz1fhxetUayGcWwTJLhCLrGVot
 hIwA==
X-Gm-Message-State: APjAAAWNz/HW6Lu5EFWT9CroMPmFNhK1MmFHKFEBrUHe1MPark3JkGyl
 gW4I4ZApDId4UxwLdCY1GXETOz4dxQM=
X-Google-Smtp-Source: APXvYqwvxy0BQwbcO7zmMMj/LzCToTOsmyf+YRoJ7BmmuJFGLD3NT2IC/y1kE2vMhrdysj0lBqOPpw==
X-Received: by 2002:adf:fc45:: with SMTP id e5mr3506614wrs.240.1561550040713; 
 Wed, 26 Jun 2019 04:54:00 -0700 (PDT)
Received: from dell ([2.27.35.164])
 by smtp.gmail.com with ESMTPSA id f12sm36496470wrg.5.2019.06.26.04.53.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 04:54:00 -0700 (PDT)
Date: Wed, 26 Jun 2019 12:53:58 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Tony Xie <tony.xie@rock-chips.com>
Subject: Re: [PATCH v10 1/6] mfd: rk808: remove the id_table
Message-ID: <20190626115358.GS21119@dell>
References: <20190621103258.8154-1-tony.xie@rock-chips.com>
 <20190621103258.8154-2-tony.xie@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621103258.8154-2-tony.xie@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_045402_395983_1CBE3D72 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 huangtao@rock-chips.com, heiko@sntech.de, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, xsf@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, chenjh@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpLCAyMSBKdW4gMjAxOSwgVG9ueSBYaWUgd3JvdGU6Cgo+IFJlbW92ZSB0aGUgaWRfdGFi
bGUgYmVjYXVzZSBpdCdzIG5vdCB1c2VkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRvbnkgWGllIDx0
b255LnhpZUByb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvcms4MDguYyB8IDkg
LS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGRlbGV0aW9ucygtKQoKQWxzbywgdGhpcyBw
YXRjaCBhbHJlYWR5IGFwcGVhcnMgdG8gYmUgYXBwbGllZC4KCk9uY2UgcGF0Y2hlcyBhcmUgdGFr
ZW4gZnJvbSB0aGUgc2V0LCB5b3Ugc2hvdWxkIGF2b2lkIHJlc2VuZGluZyB0aGVtLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZmQvcms4MDguYyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKPiBpbmRl
eCAyMTZmYmY2YWRlYzkuLjk0Mzc3NzgyZDIwOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21mZC9y
azgwOC5jCj4gKysrIGIvZHJpdmVycy9tZmQvcms4MDguYwo+IEBAIC01NjgsMTQgKzU2OCw2IEBA
IHN0YXRpYyBpbnQgcms4MDhfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gIAly
ZXR1cm4gMDsKPiAgfQo+ICAKPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIHJr
ODA4X2lkc1tdID0gewo+IC0JeyAicms4MDUiIH0sCj4gLQl7ICJyazgwOCIgfSwKPiAtCXsgInJr
ODE4IiB9LAo+IC0JeyB9LAo+IC19Owo+IC1NT0RVTEVfREVWSUNFX1RBQkxFKGkyYywgcms4MDhf
aWRzKTsKPiAtCj4gIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciByazgwOF9pMmNfZHJpdmVyID0g
ewo+ICAJLmRyaXZlciA9IHsKPiAgCQkubmFtZSA9ICJyazgwOCIsCj4gQEAgLTU4Myw3ICs1NzUs
NiBAQCBzdGF0aWMgc3RydWN0IGkyY19kcml2ZXIgcms4MDhfaTJjX2RyaXZlciA9IHsKPiAgCX0s
Cj4gIAkucHJvYmUgICAgPSByazgwOF9wcm9iZSwKPiAgCS5yZW1vdmUgICA9IHJrODA4X3JlbW92
ZSwKPiAtCS5pZF90YWJsZSA9IHJrODA4X2lkcywKPiAgfTsKPiAgCj4gIG1vZHVsZV9pMmNfZHJp
dmVyKHJrODA4X2kyY19kcml2ZXIpOwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8g
U2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
