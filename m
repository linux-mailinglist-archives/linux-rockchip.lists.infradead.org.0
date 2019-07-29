Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1462786CA
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j+nUe+5jSu3n4ozMWtenwXp0Vrf7dF6TAaOsIXeydJE=; b=W5Hvwdc2hhIkPQTStfCJEM3HlF
	fWpwJAr8ynx7vnz0kSvq6PdeEiVHX/U45Be+PGDLVa1N7y+mrDG16EmLUPaaA5u1jpS51OSZ4/H1B
	Z92oKZ81zA9dEqgWU62xXtOe7bFsHLZE8mqFEYZQMLk5dHgNbizAhlqW9I2CcFD7TMRvHGDg9ZT3L
	4MlGrUgoMO7usNcjSrAvRgcVHG16jLnC/DvbujBbtlRPfvkaiF/qoLud2evRpkltHcA8oJ4uq11OT
	X8ZNwsGjWdWeVPJYyzEhZrCotvbTVD7wS53/vQlG8NE9gvGTgistMb+mUQEg69mThYziauUpL4mGC
	qZdH8iEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0XW-0001OA-HF; Mon, 29 Jul 2019 07:57:50 +0000
Received: from dispatch.smurf.noris.de ([2001:780:107:b::b]
 helo=netz.smurf.noris.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0XQ-0001M5-RC
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=urlichs.de; 
 s=20160512;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uSBhunEQ+N6QUZWCDpDz51Z4XRi5iGopnbgw4Eu2HOM=; b=SMTneKRawJFfa5aedJfGB30VET
 u/03f/K9lyxquobx3Mis6U5T28VMyS4rmtenF8jAW3n09RrQI8GUJDqXJpppyP0r7gCiHKwn2ZSir
 2q9mFD2SkPz1YJCWuLYxrL56a2WBHE1dBkIoGxMqA6sNH76qSCEeFgTbRQ7r3dLVROWmr/c0uXriA
 wEeiW1qVHTazSLCNAddcHrarrrlbKM4ZPlXtzjtZ1SlteMjMmyN0LsnuiATCh0j9pTHJrKo9eZa6I
 xYZAgmPi474mAHQxynwLo+WAbQh5ZvOqP7p3TV825q4pLPMRo0gc9axVZ3GTYhUinCTYWr+hfUgm3
 zCU8tBaMTFeumZZMl7bJDqd40mw2DghDuwtXQXQezOXPZ6KtMJYDPCF3o2S9ruR1MS7TUCbJjrvkk
 GCuPbw9V9zpWnrv9pXliIVKpC5Ps/8kTGjpbxKG9llAq4Q0nGTIFS51ua3mo50+5/c5dcBP72dI8i
 lj65rokJxc6pzm9P3MXpoyKLyQRCxHKRsnWPmuvsupezGVvgfGEzEZWRsdGxkkBWlGGhf4Rbm3m33
 K3YjuZ9lBQQHMBMkfGCvS1NYVS2FgK74as5PpoNH2jYTkceCsSJYcHz+d7qsOSn27epjWfxHYil1l
 UwYFwN4j21MoXtZWzxAJs5y6aY9U5rbJGE68cHodc=;
Received: from [2001:780:7:0:225:22ff:feb1:a353]
 by mail.vm.smurf.noris.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <matthias@urlichs.de>) id 1hs0XJ-0000KZ-OA
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 09:57:37 +0200
Subject: Re: [PATCH 03/15] rockchip: rk3288: Print reset reason
To: linux-rockchip@lists.infradead.org
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-4-jagan@amarulasolutions.com>
From: Matthias Urlichs <matthias@urlichs.de>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias@urlichs.de; prefer-encrypt=mutual; keydata=
 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
 fsVEzkSD5BLOh2EZ7CyO5+Y=
Message-ID: <286eb2bd-41f6-9e11-9bf5-84b4fd586dfb@urlichs.de>
Date: Mon, 29 Jul 2019 09:57:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190729074711.16988-4-jagan@amarulasolutions.com>
Content-Language: de-CH
X-Smurf-Spam-Score: 0.0 (/)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_005745_322871_6AA3DF9C 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjkuMDcuMTkgMDk6NDYsIEphZ2FuIFRla2kgd3JvdGU6Cj4gUHJpbnQgdGhlIHJlYXNvbiBm
b3IgcmVzZXQgaW5zdGVhZCBvZiBzdG9yaW5nIGl0IGludG8KPiBlbnYgdmFyaWFibGUgaW4gcmsz
Mjg4LgoKV2h5ICJpbnN0ZWFkIiBhbmQgbm90ICJpbiBhZGRpdGlvbiB0byI/IEl0IG1ha2VzIHNl
bnNlIHRvIGhhdmUgdGhlIHJlc2V0CnJlYXNvbiBhdmFpbGFibGUgaW4gYm9vdCBzY3JpcHRzLgoK
TkI6IFdvdWxkIHRoaXMgYWxzbyBiZSBwb3NzaWJsZSBmb3IgMzM5OT8KCi0tIAotLSBtaXQgZnJl
dW5kbGljaGVuIEdyw7zDn2VuCi0tIAotLSBNYXR0aGlhcyBVcmxpY2hzCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
