Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72FB16FC4A
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 11:32:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HICuQXHGHs/0D3D4FmsBTB+l872cnpv9+3tGbuNwXEo=; b=ChZW64oDR+5wBR
	mY7UX5p8G+E/sbALyohK3qf1iH1XbwAXVnRG/NXKKpJdJA2uOEMKusO1VUR1H9q+c1ZRFJIbDWCEA
	ZQF1BKyOLO7NQazk5WGB+RU3Hq/GJC7VQ5wevo8yfws7c/Ak5fsi1VcozzcaPZkAzMAfh+I+WbV3G
	TvSxZBDYjFp69v2PvW1Bjc1hrd07q0lF4MMZeE3MlqJznXfnqRmkdL3Js8zt4cuVdu2wgSxZIyUIM
	lD4G9iyOQ3+tlXiXGOEQHWa+X8L/2POoM7fkOxdYGcKZdcnybiVWBkmq0MYjKocF1peBATlvyRi8v
	RU0ysiBJFOkafEEapJWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tzH-0002kh-3h; Wed, 26 Feb 2020 10:32:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tzE-0002kE-6I
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 10:32:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id u6so2343206wrt.0
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Feb 2020 02:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=otmCATSRYiYfcNTEa190T1n7T2AvRdBbV2LD1HclObE=;
 b=Sqv2FNlb4QYJOkmyUbBO7bwbAk95t9jcY7coAj0MhyHXegl3TMNKJvFObYocSZ8TVH
 fE16W1DoLXT2oQPG/aNmFqpU6ZXv3Ia55o9FGPlbjEq8vpybtd+abBUXZVhOSKEpNjj6
 MDiWtFeX7Itw4oL4mpZqPk/hWLVmWyFG595B76ymrD5Fd18ftU0ZtOZ0h9SRD74mazRg
 AGTWF7uuOz055tKJIP7rP0cibf1q5bxSR7w1i3dg2H4+FZv5x1xnhGMqY7WfFjZQYn2x
 oukn8WVJ99SDK9yTpv0KGZos2yGWAezAuGyKQ7jXQFDUrMRykdQj5x8pATXsYMqlvgzl
 TEHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=otmCATSRYiYfcNTEa190T1n7T2AvRdBbV2LD1HclObE=;
 b=Jw4vDYxEGz9ZXU3JOHPMZGP/90dMkXR7doZJpNp2xNn8vW6/qtqVXQwn2nSW4+H4+h
 zzQ4HufaTjrSFOPLL0VrUMBsf8chWDH7Dq6r+ottBXWWvRRlzBqCVGpX4wqn/SWKmgFu
 dUPLcqeJx+m20YXjJHkIjhkOa/a6bMS75cGTepKY1T7/ZtRWsdpmLv0dU9OxcLrlK+x0
 2XUYnUAhujdl/xXSiO7wswQNeUtGdnWQlRHZaAoiKvGqpKiNI+z6x47sZrfecAr9Kj2Q
 O0zQI/0zvth1qxGt/D5MEm6TIDdOt3eZIZDk/FdrcGR+AeiWkce+ZRy0ko1Emn381Jk4
 ZtIg==
X-Gm-Message-State: APjAAAWwGLy1c+FoQhldNtmXeb88KRgmE6zdf/dFtQa8PF9INupn+dTF
 ZLrjn0qEPuRmcl5OGbStNRq6og==
X-Google-Smtp-Source: APXvYqxJ0189fHCzXgNjZsRc+7OHH4aLOzN4lIHEZg0t6OgJRwoj3QJCIAmzJd350lmE/9RTYJ4FIA==
X-Received: by 2002:adf:80cb:: with SMTP id 69mr4546464wrl.320.1582713133328; 
 Wed, 26 Feb 2020 02:32:13 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id t131sm2460789wmb.13.2020.02.26.02.32.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:32:12 -0800 (PST)
Date: Wed, 26 Feb 2020 10:32:45 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 3/5] mfd: rk808: Stop using syscore ops
Message-ID: <20200226103245.GG3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <7fdcdb900c7dc4fba38266e1db637131c3090a67.1578789410.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7fdcdb900c7dc4fba38266e1db637131c3090a67.1578789410.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_023216_232810_9BACB8C2 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU3VuLCAxMiBKYW4gMjAyMCwgUm9iaW4gTXVycGh5IHdyb3RlOgoKPiBTZXR0aW5nIHRoZSBT
TEVFUCBwaW4gdG8gaXRzIHNodXRkb3duIGZ1bmN0aW9uIGZvciBhcHByb3ByaWF0ZSBQTUlDcwo+
IGRvZXNuJ3QgbmVlZCB0byBoYXBwZW4gaW4gc2luZ2xlLUNQVSBjb250ZXh0LCBzbyB0aGVyZSdz
IHJlYWxseSBubyBwb2ludAo+IGludm9sdmluZyB0aGUgc3lzY29yZSBtYWNoaW5lcnkuIEhvb2sg
aXQgdXAgdG8gdGhlIHN0YW5kYXJkIGRyaXZlciBtb2RlbAo+IHNodXRkb3duIG1ldGhvZCBpbnN0
ZWFkLiBUaGlzIGFsc28gb2J2aWF0ZXMgdGhlIGlzc3VlIHRoYXQgdGhlIHN5c2NvcmUKPiBvcHMg
d2VyZW4ndCBiZWluZyB1bnJlZ2lzdGVyZWQgb24gcHJvYmUgZmFpbHVyZSBvciBtb2R1bGUgcmVt
b3ZhbC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0u
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9yazgwOC5jIHwgMjYgKysrKysrKysrKysrLS0tLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9u
cygtKQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8g
U2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
