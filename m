Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FAF174C41
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 09:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6FlQILBfvRP2R28l1czzSRNvcJUJQ4K/mUjZyNBd88=; b=EL3ImSmGQqaPcG
	UhjlQJGSBYMvjbc0r6c7WOtwYrmcM7/2gzbJoON5O6koQF9tQT6/aAY8pPl/pkDbWjleVMHn7NdPC
	EG5U5fgYCCcZ4npcf6FvjQb+d/RDcMpLNy0o3XN6u3ybJENeWz7UTvm7JuHxxnP2IHnJcPN6I8NLM
	XNt4AxQrxp8uN/gQ4gnaF7oVMQys11cZfaJIliWW1hyha8bTxJYuMiHcbgEXhUl/s1nRTP+XUCrl+
	FLW+RmoX+Rkhx/fbgkOIsZO2Iacd+CxOPPx009LvwxNih/whQ8lpwCG8irMMWdvnng7E/6R9H33Fo
	C3P4ensBHJxbXxq6A2JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8JsH-0008Kd-Ls; Sun, 01 Mar 2020 08:22:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Js9-0008EL-Jv
 for linux-rockchip@lists.infradead.org; Sun, 01 Mar 2020 08:22:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id p18so8530385wre.9
 for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2020 00:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Rhjand2YknMLmemJsLK6xYIuofe/WH69hdIs95tE7og=;
 b=zddbp+J++rZwrpo+H+AyR9Ihy25JRJLkdNM7KLZJC4Xf31DhZX2IWwbEaRz3t717ZZ
 3chVGaGBpkXja5nZ8juGi5nEYaP8ZhkpS+hopu9/HFLWJMEoKhiNSCa2pONuZt5L/P5+
 IlxC1PjaPKs7KoyiqZ+6gVSZwcgizTr0LGvU7G5Pms1LdBSmSctEgQC6k+GmvH/C9a+F
 3zR/NTOTZ9aw+XkwprT4hSiScZM0mA2tobUoyg2Yhu1oiyXRDIWhD4tBojmPOxz1+Xkn
 5xtuO1fo+KyYwkbkz6ILoyiZfKJpR8dQF1LSMY5adb2V3bugGsLhNqzj2QhfdkItZlqf
 M3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Rhjand2YknMLmemJsLK6xYIuofe/WH69hdIs95tE7og=;
 b=OZPgCK+XoI5HPGEBuRR3OTKEkDzk6Vbv3L+ib2eNrO5gY2FyJh8llq9JWrj/Do5WSi
 He0gWjZk+XEryQLiDu3GJbblLn1Rfa2Fx3G+8djlnlcOiv5VBD3mJReLUyaIrQ1VaRR0
 XPNFx6v0Q2a6frdJrzOPgrNPnxTDVK+p53fXhuXGCSZ+PjRKVXVbmdlEDeukjePNq5Fq
 12JSuKRlJZGrXjTHWlqJHB9g+gaCKH+uOwslHNRajhP8+y7oU1A3RRZ96RYveRVEVeST
 YDcrTzzZ6YfVDP00RFJz2I4d8ph2Z/T6uqHcZ8t8tzK98jcQKmz5P63JgR7spmOgc7jD
 WkDQ==
X-Gm-Message-State: APjAAAVZu39C6sVNK6JWIKb69ICUUxEDfs6oooFF1N4cXUwes75/+lls
 WUFf+6AjyUOvEIKC6HD6d6wE0g==
X-Google-Smtp-Source: APXvYqyUKYrDfkP8SapfosHosObqhu4S9l3tlp5WDttcI7fx9no2uGT+xFuKji1X9Em7Iqmlcws77A==
X-Received: by 2002:adf:fc08:: with SMTP id i8mr15683653wrr.104.1583050966940; 
 Sun, 01 Mar 2020 00:22:46 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:41d5:595f:62f:a254?
 ([2a01:e34:ed2f:f020:41d5:595f:62f:a254])
 by smtp.googlemail.com with ESMTPSA id z19sm9252278wmi.43.2020.03.01.00.22.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 00:22:46 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Add txpbl node for RK3399/RK3328
To: Carlos de Paula <me@carlosedp.com>
References: <20200218221040.10955-1-me@carlosedp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <6f0447c7-0d84-fd63-61e3-b470c1b49172@linaro.org>
Date: Sun, 1 Mar 2020 09:22:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200218221040.10955-1-me@carlosedp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_002249_693214_B994CC2A 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jose.abreu@synopsys.com, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Robin Murphy <robin.murphy@arm.com>, papadakospan@gmail.com,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMTgvMDIvMjAyMCAyMzoxMCwgQ2FybG9zIGRlIFBhdWxhIHdyb3RlOgo+IFNvbWUgcm9ja2No
aXAgU29DcyBsaWtlIHRoZSBSSzMzOTkgYW5kIFJLMzMyOCBleGhpYml0IGFuIGlzc3VlCj4gd2hl
cmUgdHggY2hlY2tzdW1taW5nIGRvZXMgbm90IHdvcmsgd2l0aCBwYWNrZXRzIGxhcmdlciB0aGFu
IDE0OTguCj4gCj4gVGhlIGRlZmF1bHQgUHJvZ3JhbW1hYmxlIEJ1ZmZlciBMZW5ndGggZm9yIFRY
IGluIHRoZXNlIEdNQUMncyBpcwo+IG5vdCBzdWl0YWJsZSBmb3IgTVRVcyBoaWdoZXIgdGhhbiAx
NDk4LiBUaGUgd29ya2Fyb3VuZCBpcyB0byBkaXNhYmxlCj4gVFggb2ZmbG9hZGluZyB3aXRoICdl
dGh0b29sIC1LIGV0aDAgdHggb2ZmIHJ4IG9mZicgY2F1c2luZyBwZXJmb3JtYW5jZQo+IGltcGFj
dHMgYXMgaXQgZGlzYWJsZXMgaGFyZHdhcmUgY2hlY2tzdW1taW5nLgo+IAo+IFRoaXMgcGF0Y2gg
c2V0cyBzbnBzLHR4cGJsIHRvIDB4NCB3aGljaCBpcyBhIHNhZmUgbnVtYmVyIHRlc3RlZCBvayBm
b3IKPiB0aGUgbW9zdCBwb3B1bGFyIE1UVSB2YWx1ZSBvZiAxNTAwLgoKSSBkb24ndCBrbm93IHdo
YXQgdGhpcyBvcHRpb24gc2F5cywgd2h5IG5vdCBzcGVjaWZ5IGEgbXR1IGluIHRoZSBEVD8KClRo
ZSBoYXJkd2FyZSBsaW1pdGF0aW9uIHdpbGwgYmUgbW9yZSBjbGVhciwgbm8/Cgo+IEZvciByZWZl
cmVuY2UsIHNlZSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS80LzEvMTM4Mi4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBDYXJsb3MgZGUgUGF1bGEgPG1lQGNhcmxvc2VkcC5jb20+Cj4gLS0tCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kgfCAyICsrCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgfCAxICsKPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzMjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4
LmR0c2kKPiBpbmRleCAxZjUzZWFkNTJjN2YuLmI3ZjFkZTRiN2ZkMCAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjguZHRzaQo+IEBAIC05MDYsNiArOTA2LDcgQEAKPiAg
CQlyZXNldHMgPSA8JmNydSBTUlNUX0dNQUMySU9fQT47Cj4gIAkJcmVzZXQtbmFtZXMgPSAic3Rt
bWFjZXRoIjsKPiAgCQlyb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4gKwkJc25wcyx0eHBibCA9IDww
eDQ+Owo+ICAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAl9Owo+ICAKPiBAQCAtOTEzLDYgKzkx
NCw3IEBACj4gIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzMjgtZ21hYyI7Cj4gIAkJcmVn
ID0gPDB4MCAweGZmNTUwMDAwIDB4MCAweDEwMDAwPjsKPiAgCQlyb2NrY2hpcCxncmYgPSA8Jmdy
Zj47Cj4gKwkJc25wcyx0eHBibCA9IDwweDQ+Owo+ICAJCWludGVycnVwdHMgPSA8R0lDX1NQSSAy
MSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiAgCQlpbnRlcnJ1cHQtbmFtZXMgPSAibWFjaXJxIjsK
PiAgCQljbG9ja3MgPSA8JmNydSBTQ0xLX01BQzJQSFlfU1JDPiwgPCZjcnUgU0NMS19NQUMyUEhZ
X1JYVFg+LAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+IGluZGV4
IDMzY2MyMWZjZjRjMS4uY2Q1NDE1ZDdlNTU5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS5kdHNpCj4gQEAgLTI4OCw2ICsyODgsNyBAQAo+ICAJCXJlc2V0cyA9IDwm
Y3J1IFNSU1RfQV9HTUFDPjsKPiAgCQlyZXNldC1uYW1lcyA9ICJzdG1tYWNldGgiOwo+ICAJCXJv
Y2tjaGlwLGdyZiA9IDwmZ3JmPjsKPiArCQlzbnBzLHR4cGJsID0gPDB4ND47Cj4gIAkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPiAgCX07Cj4gIAo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9s
bG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vi
b29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
