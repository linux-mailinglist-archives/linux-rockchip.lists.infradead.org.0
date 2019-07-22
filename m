Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4F670512
	for <lists+linux-rockchip@lfdr.de>; Mon, 22 Jul 2019 18:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dqOm5AdiuM/9nRgNBXE3zMoDZUWpBWLxPsVnMxjFwrQ=; b=Omd5U5ssqgWrKPRLNL8QRGyqy
	QsBD0Wbst5YXZ4CnamWTQ7zXX7/Pm22InZ0P+QTCVdLxRmBpdQaceViSgSF5Yx1LaHgM+Yyf3wbA+
	vNRTBNOahWfN0WDJptVhvffZRdqV1kYoX+tdqqGN3AcD2TUqWE3lwYChxP45cmWJbYVwp8y/O3UzE
	C1T9i6S7LOPgHcETXpmOezzSltvDRYZbrZQefNHBtHt41vYfTeelHZY0F5HYAaD1SbRaDjM5/N5oi
	pEhhocRi0GH9UkK21mW+cGPllCgOWgUnz9cKnxjY3/DmNX8TmBOqYnywgXwdr43VornvCzj1CX5Tx
	JLUzJ2KCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpas6-0001zO-DQ; Mon, 22 Jul 2019 16:09:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hparg-0001nR-Ul; Mon, 22 Jul 2019 16:08:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so35756774wmj.5;
 Mon, 22 Jul 2019 09:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=ec7PsLDf/KFKpJK2IopnoHo9IrdpcUFU8llYnyFTifk=;
 b=errhpYg4hnsW5jKqxLaGT0xi0mUQY+ii2Rs04d0Cctqvke5hLOBby6MLuQMadFDgnO
 11r/gl6UY/1tMg0PoSJclh4NWcu1HnkZ10fFPM9vDU48lvCeXnNYmKkuMxteM5+WeVxd
 ZtVv119f/la5qwJEOQZjmsT66ZlbR/R8z93ymjhHra3xIUQs0xm0Ugtmb90oMMLioQZG
 MsqGW1tnyQBecqX+0l0yiXOGiLOF99oXN6t8Js+8VTITnb57ZpKCHgZdF6OgePrUHxba
 JgyaZC1xalDG1q6Ozs/Zn92/eXqqYzyQ4J2z6deGPxJk0bn/8gDHkFrTQroyuNX1Bmcj
 fgMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=ec7PsLDf/KFKpJK2IopnoHo9IrdpcUFU8llYnyFTifk=;
 b=ZxBDzzQ8j3kVPMYzWZ4mYqOIjeSPkLHbA7PTZFD19on3ox/XQc9d1zOgInkQ2hUpdp
 fXktiqhgLx0JmbZnEEMsnDgOwVWkNzYkCMiBs7YwJbqRHg9f0wOoyLMLAStRsC8PX6Oz
 E/ie80PGVaSv9ldCXiUL8zMe3gTcEETj9WOgACubR9ovwuoonAq2NbiXtkhu0QBByQiq
 3qTx88uvF1sIfLaSBzNWkVQfgfS09B9YVXLMol/DbEtOAkLltDg197qnoXdFY00eGRjM
 kj4yaUkWLI4OApKjSVZoUPvENBXkLR3kAbvg4ChnQFj5cgcSrc1qs+f1L4oi0H834ysj
 kwKw==
X-Gm-Message-State: APjAAAWYoq25u1YRptkq6aSnLGMZRN+/chEYeb/fQ9nq0z851EQeZpaR
 Ykasq+RrGuiKX5C0tUOvwY0=
X-Google-Smtp-Source: APXvYqwZlUbEPmniRLN0CMtv3jm2rSy2danWSpZqj/rr027RaSMNz1d7hzflwgiCOkRKrmsH4uX6iA==
X-Received: by 2002:a1c:3c04:: with SMTP id j4mr60600369wma.37.1563811719120; 
 Mon, 22 Jul 2019 09:08:39 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id e5sm40361688wro.41.2019.07.22.09.08.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 09:08:38 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: kexec on rk3399
Date: Mon, 22 Jul 2019 18:08:37 +0200
MIME-Version: 1.0
Message-ID: <7b8df2ae-032b-49bf-a7d8-5a0f8a1c2618@gmail.com>
In-Reply-To: <20190722144636.x3bxq2ky7w2yfn3m@willie-the-truck>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <20190722144636.x3bxq2ky7w2yfn3m@willie-the-truck>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_090841_025211_4C9F6098 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDQ6NDY6MzYgUE0gQ0VTVCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDQ6MzE6MjdQTSArMDIwMCwgVmljZW50ZSBC
ZXJnYXMgd3JvdGU6Cj4+IEhpLCBpIGhhdmUgYmVlbiBydW5uaW5nIGxpbnV4IG9uIHJrMzM5OSBi
b290ZWQgd2l0aCBrZXhlYyBmaW5lIHVudGlsIDUuMgo+PiBGcm9tIDUuMiBvbndhcmRzLCB0aGVy
ZSBhcmUgbWVtb3J5IGNvcnJ1cHRpb24gaXNzdWVzIGFzIHJlcG9ydGVkIGhlcmU6Cj4+IGh0dHA6
Ly9sa21sLml1LmVkdS9oeXBlcm1haWwvbGludXgva2VybmVsLzE5MDYuMi8wNzIxMS5odG1sCj4+
IGtleGVjIGhhcyBiZWVuIGlkZW50aWZpZWQgYXMgdGhlIHByaW5jaXBhbCByZWFzb24gZm9yIHRo
ZSBpc3N1ZXMuCj4KPiBJIHRob3VnaHQgdGhhdCB5b3UgcmVzb2x2ZWQgdGhpcyBpc3N1ZSBieSB1
cGdyYWRpbmcgdS1ib290LiBEaWQgdGhhdCBub3QKPiBhY3R1YWxseSB3b3JrPwo+Cj4gV2lsbAoK
SSBhbSBub3cgdXNpbmcgdS1ib290LCBidXQgdGhhdCBpcyBub3QgYSBzb2x1dGlvbi4KTXkgaW50
ZW50aW9uIGlzIHRvIHVzZSBpdCBvbiB0aGUgU2FwcGhpcmUgYm9hcmQgYW5kIG9uIGdydS1rZXZp
bi4KSSB3b3VsZCBsaWtlIHRoZSBib290bG9hZGVyIHRvIHN1cHBvcnQgSERNSSBvbiB0aGUgc2Fw
cGhpcmUgYW5kIEVEUCBvbiAKa2V2aW4KZm9yIHRoZSBpbnRlcmFjdGl2ZSBib290IG1lbnUuClUt
Qm9vdCBvbiB0aGUgU2FwcGhpcmUgYm9vdHMsIGJ1dCBoYXMgbm8gZ3JhcGhpYyBkaXNwbGF5LiBL
ZXZpbiBpcyBub3QgCnN1cHBvcnRlZCBhdCBhbGwuCkkndmUgYWNoaXZlZCBzb21lIHByb2dyZXNz
IG9uIHRoZSB1LWJvb3QgZnJvbnQsIGJ1dCBub3QgZW5vdWdoIHRvIGhhdmUgCmRpc3BsYXkuCgpX
aXRoIGEga2V4ZWMtYmFzZWQgYm9vdGxvYWRlciBkaXNwbGF5IGlzIGFscmVhZHkgd29ya2luZywg
b3V0IG9mIHRoZSBib3guCgpGcm9tIGFub3RoZXIgcG9pbnQgb2YgdmlldywgSSB3b3VsZCBsaWtl
IHRvIHJlZHVjZSB0aGUgVENCICh0cnVzdGVkIApjb21wdXRpbmcgYmFzZSkuCkxpbnV4IGlzIGh1
Z2UsIGJ1dCBpcyBhbHJlYWR5IGluIHRoZSBUQ0IsIHNvLCBleGVjdXRpbmcgaXQgdHdpY2UgZG9l
cyBub3QgCmFkZCB0byB0aGUgVENCLgpVLUJvb3QsIGluc3RlYWQsIGlzIGVubGFyZ2luZyB0aGUg
VENCLCBpbiB0aGlzIGNhc2UuCgpSZWdhcmRzLAogIFZpY2Vuw6cuCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
