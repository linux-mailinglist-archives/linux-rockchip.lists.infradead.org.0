Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F393A1AB09
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 May 2019 09:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+g3+JVb0nbsVWVRzjbH86JQuHdwV7+MTmbTTg/6OP0=; b=FH6rSrht5H7BqM
	/KrEGkOsyJV4mITvFgfZZJbbzbnmVL1kNTzKp53n0z+w+a47+wiFelpKjfvjnK8EJzWnLVd5E7DZM
	th73KYeBSF3dhdAhfHXNRKbD39lEQ4SbMrYFnbrwdVLyP6CA9jvz08DiH3vzDTO8rVqEr4jAYqJA5
	PRHlAcakD6nXb303w04NQIGFnG4pRlIg9g+ZcnC9EL2J24ul3tI3eQhPj9FWUbNVEvLOjKOYbMZYo
	DtoWHEFs40xJQURRRvE2KHatldcaFiUPgvfI+okc/+h67QO2ptfjvsbC9FgFN5XzVvhbS44BiCqEY
	0HHml4IPPNfPAt4Aik5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPj0H-0001Fb-HS; Sun, 12 May 2019 07:34:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPj0E-0001EX-2t
 for linux-rockchip@lists.infradead.org; Sun, 12 May 2019 07:34:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id h4so11830789wre.7
 for <linux-rockchip@lists.infradead.org>; Sun, 12 May 2019 00:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=d7sSxRVqA8rpoJpHM55bvCBo8kEXHBET8gLdu4SoA2o=;
 b=QgJMbrd2QkXXFi6N3hEyZyuXUHHYMe41Y49a15hCZSV94FIqr9/G+VOpNB9f3Q6cVZ
 MdpEqNR2KiE2iMRCykBgTZv7ZOZJ5wNzEeg9OrkrPF9d/FLEKzOqK5U7CRh6gYLsuoZh
 3THz2AC3danPZNVWlJ8POM+h+PoUPpt1Xs2TC5abRycG9OdcP0UWrbYOXh65NlbgkZiP
 n0dyM94HDz573/Y+iUQRRoil1pSqGJn1U1vVd9dPmlzK9+fZUyYyGVFzu/Kf12am5lfx
 PQv3o/5KlitAzg1IVeAmsQxpd074wWcSHcO4iHIWc0q4mvc4KugBWH7sbrKBI4zt72YV
 JDkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d7sSxRVqA8rpoJpHM55bvCBo8kEXHBET8gLdu4SoA2o=;
 b=XFMShpCQfvpYu9c13HN7dCu+iPGeGqQxndX9AU6wcE5PGysgfhhMsZes6VUVuByWGm
 3WlLwnaWo8Ag95hg++BcnohVNgmO1OuOlO2gGI+k6NLCUFi4ZRRaezhnUE2jkpbBdFAz
 dPTUletXM4WFryMd4Dc5+T+Q1AIcn8R024DqWV3ZYUGP5jtaBDx3Iyo/c1FS8yb4KCCu
 kQWDBajq/vIoOpsD+db426QN/e/KKSavbyvFA9YbD7W7PvbuE5HfOnukW1CofXGJfxOD
 RTuacgo5PbRx/KtwJyn2ZHanT5SFnxO5wDX2UdiujO0sWrl3yDXcZcW3ppQ1EdYDnpHF
 ikXQ==
X-Gm-Message-State: APjAAAXf2A9qFQp9W5p5cVLRdvO9A6f22+qg3DHWz6FBAI4wJDjy+ADW
 QayvDn1WHStnpaMAr1FewWOvU2Z/Z5Y=
X-Google-Smtp-Source: APXvYqx7W6og2OfRFEDNmOqXuHdkhnH6O12kcwF1h84yKRQb0j70jL8MyXwHOEgnpYH/QRHPgwdWYw==
X-Received: by 2002:a05:6000:10c4:: with SMTP id
 b4mr701248wrx.145.1557646471390; 
 Sun, 12 May 2019 00:34:31 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd4:5700:9c27:51d8:9ed5:dad3?
 (p200300EA8BD457009C2751D89ED5DAD3.dip0.t-ipconnect.de.
 [2003:ea:8bd4:5700:9c27:51d8:9ed5:dad3])
 by smtp.googlemail.com with ESMTPSA id r3sm7124972wrn.5.2019.05.12.00.34.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 00:34:30 -0700 (PDT)
Subject: Re: [Regression] "net: phy: realtek: Add rtl8211e rx/tx delays
 config" breaks rk3328-roc-cc networking
To: Peter Geis <pgwipeout@gmail.com>, Andrew Lunn <andrew@lunn.ch>
References: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
 <20190512023754.GK4889@lunn.ch>
 <ae62419b-53f1-395d-eb0e-66d138d294a8@gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <4c6ef3f1-a2c7-f2da-3f2a-cd28624007f8@gmail.com>
Date: Sun, 12 May 2019 09:34:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ae62419b-53f1-395d-eb0e-66d138d294a8@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_003434_129319_696772CB 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Serge Semin <Sergey.Semin@t-platforms.ru>, netdev@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMTIuMDUuMjAxOSAwNDo1MCwgUGV0ZXIgR2VpcyB3cm90ZToKPiBPbiA1LzExLzIwMTkgMTA6
MzcgUE0sIEFuZHJldyBMdW5uIHdyb3RlOgo+PiBPbiBTYXQsIE1heSAxMSwgMjAxOSBhdCAwNzox
NzowOFBNIC0wNDAwLCBQZXRlciBHZWlzIHdyb3RlOgo+Pj4gR29vZCBFdmVuaW5nLAo+Pj4KPj4+
IENvbW1pdCBmODFkYWRiY2Y3ZmQwNjdiYWYxODRiNjNjMTc5ZmMzOTJiZGIyMjZlICJuZXQ6IHBo
eTogcmVhbHRlazogQWRkCj4+PiBydGw4MjExZSByeC90eCBkZWxheXMgY29uZmlnIiBicmVha3Mg
bmV0d29ya2luZyBjb21wbGV0ZWx5IG9uIHRoZQo+Pj4gcmszMzI4LXJvYy1jYy4KPj4+IFJldmVy
dGluZyB0aGUgb2ZmZW5kaW5nIGNvbW1pdCBzb2x2ZXMgdGhlIHByb2JsZW0uCj4+Cj4+IEhpIFBl
dGVyCj4+Cj4+IFRoZSBmaXggc2hvdWxkIGJlIGluIG5ldCwgYW5kIHdpbGwgc29vbiBtYWtlIGl0
cyB3YXkgdXB3YXJkcy4KPj4KPj4gwqDCoMKgwqAgQW5kcmV3Cj4+Cj4gCj4gCj4gR29vZCBFdmVu
aW5nLAo+IAo+IFRoYW5rcywgaXMgdGhlcmUgYSBsaW5rIHRvIHRoZSBwYXRjaCBzbyBJIG1heSB0
ZXN0IGl0Pwo+IApodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9kYXZlbS9uZXQuZ2l0L2NvbW1pdC8/aWQ9ZGFmM2RkYmUxMWEyZmY3NGM5NWJjODE0ZGY4ZTVm
ZTMyMDFiNGNiNQoKPiBQZXRlcgo+IApIZWluZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
