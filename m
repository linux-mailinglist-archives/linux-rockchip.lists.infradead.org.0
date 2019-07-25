Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C575758B0
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 22:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv3Ncml6RTvvVukwR24cvy4pz7MFEdI2LuMx+zVSLes=; b=M7Nl4HFp4XKLjX
	0+etdGM8KPN+PTkDhORyYmZxXScfrmTeCI8vDJupri24QQcA7XZCEQ9ilRf6AGcSy1spDwKL5BB2p
	LvCEB8qV52/i774PIlAUBlQ/8/efkcW9rA+awfuVkx+//WKEu/xPmN3qgPexodrnCz5Cf1TtSKvqC
	N1bYV9+qjN7sRgwhSKUT2FDnIPQlJ1BGPLvoIvx24IzRBPNnKr3Cge3OQE0jX1y3CtR+kYBlpiFM4
	3ZevJpAycpQG5Tgl5nr9K1CdeoIrpiYvqbHEru1/C/jiBzkAjBhLmCXNUm7relsKbcKn/xm9kjCvl
	2Ca/SWnT5ftN0ujDND9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqk5y-0005Ow-V1; Thu, 25 Jul 2019 20:12:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqk5w-0005Of-8F
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 20:12:09 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqk5u-0001tC-Gm; Thu, 25 Jul 2019 22:12:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrius =?utf-8?B?xaB0aWtvbmFz?= <andrius@stikonas.eu>
Subject: Re: [PATCH] arm64: dts: rockchip: Add PWM fan for RockPro64
Date: Thu, 25 Jul 2019 22:12:05 +0200
Message-ID: <6471342.jnQKebxgib@phil>
In-Reply-To: <20190724191715.7668-1-andrius@stikonas.eu>
References: <20190724191715.7668-1-andrius@stikonas.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_131208_445074_2F932C1A 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIDI0LiBKdWxpIDIwMTksIDIxOjE3OjE1IENFU1Qgc2NocmllYiBBbmRyaXVz
IMWgdGlrb25hczoKPiBSb2NrUHJvNjQgaGFzIGEgZGVkaWNhdGVkIGNpcmN1aXQgZm9yIGRyaXZp
bmcgYSAxMlYgZmFuIGZyb20gUFdNMS4KPiAKPiBBdCB0aGUgbW9tZW50IHRoaXMgbWFrZXMgZmFu
IHNwaW4gYXQgZnVsbCBzcGVlZC4gZmFuY29udHJvbCBjYW4gYmUgdXNlZAo+IHRvIGNvbnRyb2wg
ZmFuIHNwZWVkLiBFLmcuIHRoZSBmb2xsb3dpbmcgY29uZmlnIGZpbGUgd29ya3Mgd2VsbDoKPiAK
PiBJTlRFUlZBTD0xMAo+IERFVlBBVEg9aHdtb24wPWRldmljZXMvcGxhdGZvcm0vcHdtLWZhbgo+
IERFVk5BTUU9aHdtb24wPXB3bWZhbgo+IEZDVEVNUFM9aHdtb24wL2RldmljZS9wd20xPS4uL3Ro
ZXJtYWwvdGhlcm1hbF96b25lMC90ZW1wCj4gTUlOVEVNUD1od21vbjAvZGV2aWNlL3B3bTE9NDAK
PiBNQVhURU1QPWh3bW9uMC9kZXZpY2UvcHdtMT02MAo+IE1JTlNUQVJUPWh3bW9uMC9kZXZpY2Uv
cHdtMT0xMDAKPiBNSU5TVE9QPWh3bW9uMC9kZXZpY2UvcHdtMT03MAo+IAo+IEluIHRoZSBmdXR1
cmUgaXQgd291bGQgYmUgbmljZSB0byBkZWZpbmUgdHJpcCBwb2ludHMgaW4gZHRzIGZpbGUsCj4g
c28gdGhhdCBrZXJuZWwgY291bGQgYWRqdXN0IGZhbiBzcGVlZCBpdHNlbGYuCgpwYXRjaGVzIHdl
bGNvbWUgOy0pCgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJpdXMgxaB0aWtvbmFzIDxhbmRyaXVzQHN0
aWtvbmFzLmV1PgoKYXBwbGllZCBmb3IgNS40CgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
