Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643EF42A00
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Jun 2019 16:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Od+7OpA+1bGtP/bgjDAgcBry124Rv9n9//xCiLXI9o=; b=QWkG8AUSvwqIaV
	zVkxStHanA2IydQdwNQIPKWBtwx8MZef1CWrqoRzu60my2tz1+uFQLDm0OMOvxgzZWQk96bzzyteS
	vgj6VMNy2F7+B9lLHWuXlp0ZPzJE0MYhWbmi4P9jjw4oaTOyB4wd/WOdjB8Z1qmd4rQ9ecyqEEFdE
	faRchMIPhHyqzljC0G7puxujf7y6yuZdofuLMMPjxGUBXZuuAX1CJbQsLCE3v63Pvra+vOs2b6xm2
	vsL8K2T+QTDsKT7RxosnK0YoU8tOFpIV5UxcOXU9QhE65ow4P7GFR0Bq0RiGqeyUu9aPIabJGoN8B
	FRTjxme9uwCcLQB9Hx6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4fE-0005s4-Qa; Wed, 12 Jun 2019 14:55:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4ez-0005gP-62
 for linux-rockchip@lists.infradead.org; Wed, 12 Jun 2019 14:55:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so6881493wmj.3
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 07:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nCD7HcffPhfY+aXwnsCEJiJ1Pv2Arf9rsBQ+Qvooegg=;
 b=M/4OoGva6PoYrdahGepHgLHEgBfNSqH0e5VLyeZY7uqHIphlFn2OK2IgRlXQ9XBHlu
 QDV6Tu393CKd1L1wE267WzwQ6+d/CCW5m0wcCJTKGpBmfn7bi71FaoBCORcq82UnFDxy
 yVgjx+ctOQak+HBjmDtfJVAMCH9knwfFcJ1H8SrtWdDEemhi3aHo+F+r6mT5WquUbjQg
 Xcwd4Uf0oC9ZTYs9hQ//YA1NpoFjletTxBI353BH6UTkodl4nonsE3WQpONjU8o0BVWp
 Ya8U5W4ErXRjvkWlsIS8DE2XZ5ytmPy4UPi9j6VLa4JuWPbfcAcHwRbcNGzoW+SJIUEx
 MnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=nCD7HcffPhfY+aXwnsCEJiJ1Pv2Arf9rsBQ+Qvooegg=;
 b=t1blo77y0GKCIWKJlYDtLWN1VvPCvsJY614ZRUu9JfaCQ7iiB0JVu9CPOZ41ZGZLLh
 Lnr/MEKaWVkd/N9oiXEacyCVZBQ3pNHbKcBqyxBCYu7edANKMurp2LVuo2mJ0ziFotdU
 h4zIoWzSklr4e1l1bYxhGspW3gsboY0EjJrDKn7hPAWZFFrsd/F4x1QAMbdRqe1HQRa1
 BsL0qCtLqpE+syGUvKMZSXkBye54sjllwB7IbqAaUynemBddsLz909u5+o9K/DKMjzA8
 mGfBCqcdGHpFQL34tCnLByQKGlpinv6qxbl2pmqRzF3beReKrcnTe/XhVyhn8HwCd9oz
 fiOw==
X-Gm-Message-State: APjAAAXBAr/QKpU50vXf7IVvINJg17M8lBPSJB/QO8quGFLSwbm0fiSM
 yi2PeLpv7o4lKrYu+5WNvI6btYF78T8=
X-Google-Smtp-Source: APXvYqyyNdD51nuq0WSNVyyKdDcW//fpzd/zeIK0uocsDpp8RyDjAO2UcKLbYAtgY5RcBP0Sf+S8Mw==
X-Received: by 2002:a1c:c545:: with SMTP id v66mr10112035wmf.51.1560351331502; 
 Wed, 12 Jun 2019 07:55:31 -0700 (PDT)
Received: from [192.168.0.41] (237.65.130.77.rev.sfr.net. [77.130.65.237])
 by smtp.googlemail.com with ESMTPSA id s9sm280101wmc.1.2019.06.12.07.55.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 07:55:30 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5423af35-9ba0-cf41-88a0-cf3f01777aac@linaro.org>
Date: Wed, 12 Jun 2019 16:55:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604165802.7338-1-daniel.lezcano@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_075533_226819_02466EA4 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, edubezval@gmail.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CkhpIGFsbCwKCmlzIHRoZXJlIGFueSBjb21tZW50IG9uIHRoZXNlIHR3byBwYXRjaGVzPwoKCk9u
IDA0LzA2LzIwMTkgMTg6NTcsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+IEN1cnJlbnRseSB0aGUg
Y29tbW9uIHRoZXJtYWwgem9uZXMgZGVmaW5pdGlvbnMgZm9yIHRoZSByazMzOTkgYXNzdW1lcwo+
IG11bHRpcGxlIHRoZXJtYWwgem9uZXMgYXJlIHN1cHBvcnRlZCBieSB0aGUgZ292ZXJub3JzLiBU
aGlzIGlzIG5vdCB0aGUKPiBjYXNlIGFuZCBlYWNoIHRoZXJtYWwgem9uZSBoYXMgaXRzIG93biBn
b3Zlcm5vciBpbnN0YW5jZSBhY3RpbmcKPiBpbmRpdmlkdWFsbHkgd2l0aG91dCBjb2xsYWJvcmF0
aW9uIHdpdGggb3RoZXIgZ292ZXJub3JzLgo+IAo+IEFzIHRoZSBjb29saW5nIGRldmljZSBmb3Ig
dGhlIENQVSBhbmQgdGhlIEdQVSB0aGVybWFsIHpvbmVzIGlzIHRoZQo+IHNhbWUsIGVhY2ggZ292
ZXJub3JzIHRha2UgZGlmZmVyZW50IGRlY2lzaW9ucyBmb3IgdGhlIHNhbWUgY29vbGluZwo+IGRl
dmljZSBsZWFkaW5nIHRvIGNvbmZsaWN0aW5nIGluc3RydWN0aW9ucyBhbmQgYW4gZXJyYXRpYyBi
ZWhhdmlvci4KPiAKPiBBcyB0aGUgY29vbGluZy1tYXBzIGlzIGFib3V0IHRvIGJlY29tZSBhbiBv
cHRpb25hbCBwcm9wZXJ0eSwgbGV0J3MKPiByZW1vdmUgdGhlIGNwdSBjb29saW5nIGRldmljZSBt
YXAgZnJvbSB0aGUgR1BVIHRoZXJtYWwgem9uZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
TGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSB8IDkgLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTkuZHRzaQo+IGluZGV4IDE5NmFjOWI3ODA3Ni4uZTEzNTdlMGY2MGY3IDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4gQEAgLTgyMSwxNSArODIxLDYgQEAK
PiAgCQkJCQl0eXBlID0gImNyaXRpY2FsIjsKPiAgCQkJCX07Cj4gIAkJCX07Cj4gLQo+IC0JCQlj
b29saW5nLW1hcHMgewo+IC0JCQkJbWFwMCB7Cj4gLQkJCQkJdHJpcCA9IDwmZ3B1X2FsZXJ0MD47
Cj4gLQkJCQkJY29vbGluZy1kZXZpY2UgPQo+IC0JCQkJCQk8JmNwdV9iMCBUSEVSTUFMX05PX0xJ
TUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+IC0JCQkJCQk8JmNwdV9iMSBUSEVSTUFMX05PX0xJTUlU
IFRIRVJNQUxfTk9fTElNSVQ+Owo+IC0JCQkJfTsKPiAtCQkJfTsKPiAgCQl9Owo+ICAJfTsKPiAg
Cj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cu
ZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29t
LyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJs
b2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
