Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607B616FC4C
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 11:32:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQ0sB4+Lwb6bfYI5s3emRH+fqPj7gdmIgYGfm4wzdSs=; b=kR+zIXKsPZ0nSi
	kumktVJHQxx7i6fx6NP9hvX/Mlq0oNY+8UlvKry2i5qtqc7LWxs3XHiJtbPg+1Jt+JRHkQscj8KvB
	xuXYfOQJ0s7ep/e8De+19zTEkmhOkN4BgrJuzPGUfmH+RvaJgdwA6qu6XDLWxBhoV/8MmZcIQDFru
	8yV/BFFN+CzSuqjTE3/9sYoR9+6IbZsl6TYllxy2/WC3rdvTkpHERJ176Lf4UwbXPoPCAfDqJfMUa
	eSBrV/hdsHER7OtdHPuXcpGOQ59tywf4Yy8FIyuwADXyN9PDWLbEwfyDED9A+VQWoWyx3HkVLEoPg
	B4o/PPj3URc2rgU3mF4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tzQ-0002yT-Ke; Wed, 26 Feb 2020 10:32:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tzO-0002wA-EO
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 10:32:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id u6so2344000wrt.0
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Feb 2020 02:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=lzDEWKPcguCo8G2LOoovjCXzcVBmrP7+p+BK1qciGjU=;
 b=pJORh3w6SN1SakeUIDUAv22ynfige3lJdRAOvIfynhVC5ojBf1Ah+t5Ctldrm1pAFU
 6w/RD07oPzV14/YfdNaLpQWG1fId4OZHQdLF2kPAzWaTwiE8aZbIBlM5GxguTfTZqg3F
 Jpwog9zhhv0qTKZIENBSJA7DXgGGbuWTFJOYoLkMaeG9hf9+BskCTdae5RMy4GCOXgW6
 5DP9Y9ArHNXmphklXCUrCj03L/2V86dWVruMJEHHxEcZFtrXrAIh0T2OyJxGzRoEHmEt
 TJlovug0o/lxaJTm+ON4TuxjbiVfUenWkBy2DZ9NXzNk5hBdKc826oGaX5lOGbKlA99P
 D/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=lzDEWKPcguCo8G2LOoovjCXzcVBmrP7+p+BK1qciGjU=;
 b=H2twWlsyqE133wn6NIW6FicFbacsWGWM/tnBtyenas7G/7gCztM/HCddGcSwAIfGV1
 mTG/KNbxKPnWPiVzf5sWjoDeBpL7HJ9Bz6PINCP+LzjXAjTkfONDMGcFHi7jleqJPqZb
 KmbcuAfnaYD6VjDK2dGdFpS+Bt7oRz74mIUEgx57vU/gfLMIVX13P4Wg16F0HJ6spUmA
 ujTP5xHfLVly6pfAT6d8bq9p3OHn+K0Uv1Pt6r3+E9AvBYuxBjujDf1oh/TtFgU8tn74
 CtR/ZQvNKHgvZAqZz2WDywSWQSF6YdCrHVhtxSi6FD7DABwoRFW2dcYf3QoQUx0SK2xx
 GycQ==
X-Gm-Message-State: APjAAAWrl73v0c2CgrstVSKuB9Vp665c8YXwNlSw1F4NHQryJAxgWb7S
 Ok41K37ednq1P1paHY8HK26/yA==
X-Google-Smtp-Source: APXvYqwzbK/t7bokdb1eFC4fb7dg+m/zuk8ZwzA11pHQK3e6UUZGyhJL//Tzp8JyW9aV6P/sr8YKUA==
X-Received: by 2002:a5d:6544:: with SMTP id z4mr4632606wrv.31.1582713145129;
 Wed, 26 Feb 2020 02:32:25 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id o27sm2683343wro.27.2020.02.26.02.32.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:32:24 -0800 (PST)
Date: Wed, 26 Feb 2020 10:32:55 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 4/5] mfd: rk808: Reduce shutdown duplication
Message-ID: <20200226103255.GH3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <c6d320601104ab6502123a8db947c02801de69ea.1578789410.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6d320601104ab6502123a8db947c02801de69ea.1578789410.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_023226_483815_371BF870 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

T24gU3VuLCAxMiBKYW4gMjAyMCwgUm9iaW4gTXVycGh5IHdyb3RlOgoKPiBSYXRoZXIgdGhhbiBo
YXZpbmcgMyBhbG1vc3QtaWRlbnRpY2FsIGZ1bmN0aW9ucyBwbHVzIHRoZSBtYWNoaW5lcnkgdG8K
PiBrZWVwIHRyYWNrIG9mIHRoZW0sIGl0J3MgZmFyIHNpbXBsZXIgdG8ganVzdCBkeW5hbWljYWxs
eSBzZWxlY3QgdGhlCj4gYXBwcm9wcmlhdGUgcmVnaXN0ZXIgZmllbGQgcGVyIHZhcmlhbnQuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9tZmQvcms4MDguYyAgICAgICB8IDYxICsrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ICBpbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oIHwgIDEgLQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDQyIGRlbGV0aW9ucygtKQoKQXBw
bGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMg
VGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFS
TSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
