Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD34E149813
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Jan 2020 23:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObRKPJuoo2Wrkw4VMwIMkjUs9bRSUeNIvJLDr5IHRXY=; b=GBpfBmZiVjMmw6
	rj8Nk1ZOQAC7KOY3bV33ax24F5J7LUuMdfPD7PV/jbd17EmX0+mhRjyBSVhI/M/L3f4B9/a6IoFFP
	5kpFNnmbN4Z9Qims4r6npuGLgxx6GjoMpe60+tz8FkioQUJFq+Uv7UgVZAw8TvalpRYj28rREX4fL
	xdBkV7ruQ62sjHbOdwaEM4j3D7x08bMkxUAO62YLK4nYbDNYrEX+8tagOYwR1hV3gaRNbm9lUAQf+
	KQe9CG4Oc//ZK8kKXFewureX3onuR08Xky8265JH5AzxkzCCnb5yZOBvqmO2AmqteAPx37HQDuhJy
	7IRy4ltGEUjI5Mdrig9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivTv1-0000ER-P9; Sat, 25 Jan 2020 22:28:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivTuw-0000DY-BY; Sat, 25 Jan 2020 22:28:41 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so3111744wmi.5;
 Sat, 25 Jan 2020 14:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JuIIuzl/aUbh+G2KKabF03wm8Z2xQCzAlj66QQd7f6M=;
 b=rLIPleQc0Wji7dJaPdcJUUojzJxZLNZckJi1XGzpETZ6cHNZ0p3brsVX/ZgJy7AjYG
 H9AIxBfJvgruTYpB+/fVLWU0TTa/09bMPQ0XG6Wp6LrR3YFJsV/6LB+kafTCPT+XNDZS
 tKB3LUkb9OTVd2urF901g5dwLh+uMymY1PA/NUFf4BHiX4VFrwyDwslHMNMEpfxVqyd/
 80oYEyplzCe4x8K7xJMt7Y2XnON855NMuF0caLNSG2mR5byRBtNMtKZGUMcbHP3ec5ML
 OfKsAlsjVuxhh9cXE6XnDhdfz5EF3QBqCxaeovugPw6bDyZa2HJOE825EswiSKL4+CG8
 RirQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JuIIuzl/aUbh+G2KKabF03wm8Z2xQCzAlj66QQd7f6M=;
 b=W/ILl7WY6wcmPgbZhLiYse1BJAAg5+jHL1Jha1gM7SUOsO42mdjoHsvefd6uwkdcvJ
 yaPcnlr5XNF0QsLYHakJRwSs2pRdHUY1c6BKuas613CJq2gLqaR3oBu7lCNSij7EJWE1
 5icXSCeZgB51Qw70biy4nZ//MR9AUJkGaF+ALpWkn44MY0QchmH1IxVJE7D16AdRmZow
 kDhnTeQXATcOgcNrcCfnJz1V30s5XCdj7ScKI6XU/ZjTnUJvJxeKcpSP2ixcnbGGFsWc
 bpLDfXGfPJXfUpnczpLk3aFaLUWmCZicFgG2zanhHtsh+A+6kdknVzmFs6HWemZ+ga41
 9N3Q==
X-Gm-Message-State: APjAAAVqCV/DYzAxypDWDR5BbWE3CAmSdQ1YQvVUmXKWzP1/+kDXITQa
 GbyvYp2I2w/bkm2YokiTbr8OohrB
X-Google-Smtp-Source: APXvYqz5BIt7pACL1GHEpmqqXj8Xco8xfSye9IZWqYTSbnpswncvmZj5/2o76yKiCIMZj0o+U7EZAw==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr6169031wmc.185.1579991314340; 
 Sat, 25 Jan 2020 14:28:34 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o4sm13290965wrw.97.2020.01.25.14.28.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jan 2020 14:28:33 -0800 (PST)
Subject: Re: [RFC PATCH v2 00/10] Enable RK3066 NANDC for MK808
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
 <20200124181751.721aa428@xps13>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <dd4bb5d4-76fe-1a34-5fee-5b9e58596c1d@gmail.com>
Date: Sat, 25 Jan 2020 23:28:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200124181751.721aa428@xps13>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_142838_425294_75607E40 
X-CRM114-Status: GOOD (  24.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKU2VlIGJlbG93LgpCdHcsIHdoYXQgaXMgeW91ciBpbXByZXNzaW9uIG9mIHRo
ZSBvdGhlciBWMiAnaW1wcm92ZW1lbnRzJz8KClRoYW5rcwoKWy4uXQoKPj4gTm90IHRlc3RlZDoK
Pj4KPj4gTkFOREMgdmVyc2lvbiA5Lgo+PiBOQU5EIHJhdyB3cml0ZS4KPgo+IG5hbmRiaXRlcnJz
IC1pIC9kZXYvbXRkPHg+IHRvIHZhbGlkYXRlIGl0IHdvcmtzIQo+Cj4+IFJLMzA2NiBzdGlsbCBo
YXMgbm8gc3VwcG9ydCBmb3IgVWJvb3QuCj4+IEFueSB3cml0ZSBjb21tYW5kIHdvdWxkIGludGVy
ZmVyZSB3aXRoIGRhdGEgc3RydWN0dXJlcyBtYWRlIGJ5IHRoZQpib290IGxvYWRlci4KPj4KPj4g
RXRjLgo+Pgo+PiBQcm9ibGVtczoKPj4KPj4gTm8gYmFkIGJsb2NrIHN1cHBvcnQuIE1vc3QgZGV2
aWNlcyB1c2UgYSBGVEwgYmFkIGJsb2NrIG1hcCB3aXRoIHRhZ3MKPj4gdGhhdCBtdXN0IGJlIGxv
Y2F0ZWQgb24gc3BlY2lmaWMgcGFnZSBsb2NhdGlvbnMgd2hpY2ggaXMgb3V0c2lkZQo+PiB0aGUg
c2NvcGUgb2YgdGhlIHJhdyBNVEQgZnJhbWV3b3JrLgo+Cj4gSSBkb24ndCB1bmRlcnN0YW5kIHRo
aXMgc3Rvcnkgb2YgYmFkIGJsb2NrIG1hcC4gQXJlIHlvdSBjb21wYXJpbmcgd2l0aAo+IGEgdmVu
ZG9yIGtlcm5lbD8KClR3byBzZXBhcmF0ZSB0aGluZ3M6CgotUm9ja2NoaXAgRlRMIGhhcyBpdCdz
IG93biBGVEwgc3RvcmFnZSBmb3JtYXQuClRoZSBvcmlnaW5hbCBmYWN0b3J5IEJCTSAobWFya2Vy
KSBpbmZvcm1hdGlvbiBpcyBsb3N0LCBzbyBpdCBzdG9yZXMKYSBCQiAoYmFkIGJsb2NrKSBtYXAv
dGFibGUgYXQgdGhlIChsYXN0IGVyYXNlIGJsb2NrIC0gbikgYW5kIHRoZW4gZG93bndhcmRzLgpT
ZWUgc291cmNlIGJlbG93LiBOb3QgdXNhYmxlIGZvciByYXcgTVRELiBJdCdzIHRoZSBzaXR1YXRp
b24gbW9zdCB1c2VyIHdpbGwKZmluZCBvbiB0aGVyZSBOQU5ELgoKCi0gRm9yIHJhdyBNVEQgdG8g
dXNlIGl0J3Mgb3duIEJCIG1hcCBpbiB0aGlzIHN0YWdlIHRoZSBwcm9wb3NlZCBzb2x1dGlvbgpm
b3IgcmF3IE1URCBqdXN0IGRpZG4ndCBnYXZlIG1lIHNvbWV0aGluZy9yZXN1bHRzIHRoYXQgSSB1
bmRlcnN0YW5kLApzbyBJIGxlYXZlIGl0IG91dCBmb3Igbm93LiBGb3IgYW4gZW1wdHkgTkFORCB3
aXRob3V0IFJvY2tjaGlwIEZUTCB0aGlzIGNvdWxkCndvcmsgYXMgbG9uZyBhcyBpdCBzdGF5cyBv
dXQgb2Ygb3VyIGJvb3Ryb20gYmxvY2tzLgpJdCdzIGZpbmUgdGhhdCBNVEQgaXMgJ3JpZ2lkJywg
YnV0IG5vdCBhbGwgU29jcyBmaXQsIHNvIGZpbmQgc29sdXRpb25zCnRoYXQgYXJlIG1heWJlIHNl
Y29uZCBiZXN0LiBNVEQgaGFzIG1vc3QgY29tcG9uZW50cyBhbHJlYWR5IGluIHBsYWNlLApzZWUg
d2hhdCB3ZSBjYW4gbWFrZSBvdXQgb2YgaXQuCgo+Cj4gSWYgdmVuZG9ycyBpbnZlbnQgbmV3IHdh
eXMgdG8gaGFuZGxlIE1URCBibG9ja3MgaXQncyBzYWQgYnV0IHRoZXkgd2lsbAo+IG5ldmVyIGJl
IGNvbXBhdGlibGUgd2l0aCBtYWlubGluZS4gSXQncyBhIGZhY3QuIEhvd2V2ZXIgZm9yIGFuIHVw
c3RyZWFtCj4gdmVyc2lvbiwgSSBkb24ndCBnZXQgaWYgdGhlcmUgaXMgYW55IHJlYWwgaXNzdWU/
IFRoZSBsb2NhdGlvbiBvZiB0aGUKPiBCQk0gaXMgbm90IHJlbGF0ZWQgdG8geW91ciBjb250cm9s
bGVyIGRyaXZlciBidXQgZGVwZW5kcyBvbiB0aGUgTkFORAo+IGNoaXAgYW5kIGFzIHlvdSBzYXkg
YmVsb3cgd2Uga25vdyBwcm92aWRlIHRocmVlIHBvc3NpYmxlIHBvc2l0aW9ucyBpbgo+IGEgYmxv
Y2suCj4KCkhhbmRsaW5nIG9mIE1URCBibG9ja3MgcmVtYWlucyB0aGUgc2FtZSBBRkFJQ1QuCkl0
IHRyYW5zZmVycyBkYXRhIGFuZCBvb2IgYnl0ZSB0byBNVEQgZGF0YSBzdHJ1Y3R1cmVzLgpKdXN0
IGZpbmQgYSB3YXkgdG8gdGVsbCBNVEQgbm90IG1lc3Mgd2l0aCBib290cm9tIGJsb2Nrcy4KUHJv
Z3JhbW1pbmcvcmVhZGluZyBpbiBVYm9vdCBhbmQgTGludXggaXMgc29tZXRoaW5nIHRoYXQgT3Bl
biBTb3VyY2UKaGFzIHRvIGZpbmQgYSBzb2x1dGlvbiBmb3IuCgo+IFdoYXQgeW91IHJlZmVyIGFz
IHRoZSBGVEwgaXMgdGhlIGVxdWl2YWxlbnQgb2YgVUJJIGluIExpbnV4LCB3aGljaAo+IGluZGVl
ZCBvZmZlcnMgdG8gdGhlIHVzZXIgYSBsaW5lYXIgbG9naWNhbCB2aWV3IG9mIGFsbCB0aGUgdmFs
aWQgYmxvY2tzCj4gd2hpbGUgcGh5c2ljYWxseSB0aGUgZGF0YSBpcyBzcHJlYWQgYWNyb3NzIGFs
bCB0aGUgYXZhaWxhYmxlCj4gZXJhc2VibG9ja3MuCgpXaGVuIEkgcmVmZXIgdG8gRlRMIGl0J3Mg
dG8gdGhlIFJvY2tjaGlwIEZUTC4KSW4gdGhpcyBjdXJyZW50IEVYUEVSSU1FTlRBTCBkcml2ZXIg
c3RhZ2UgSSBqdXN0IHdhcm4gYSBwb3RlbnRpYWwKdW5hd2FyZSB1c2VyCm9mIHRoZSB0aGluZ3Mg
dGhhdCBhcmUgYXQgcGxheSBvbiB0aGF0IE5BTkQuIFVCSSBtaWdodCB3b3JrIGZpbmUsIGJ1dApu
b3Qgbm93LgoKPgo+Pgo+PiBoeW5peF9uYW5kX2luaXQoKSBhZGQgZXh0cmEgb3B0aW9uIE5BTkRf
QkJNX0xBU1RQQUdFIGZvciBIMjdVQ0c4VDJBVFItQkMuCj4+CgpFeGFtcGxlOgpUbyBzZWUgd2hh
dCBoYXBwZW5zIHdoZW4gYSBwYXJ0aXRpb24gaXMgcGxhY2VkIG92ZXIgdGhlIGJvb3Ryb20gZXJh
c2UKYmxvY2tzLgpGcm9tIHRoZSBwcmV2aW91cyBsb2cgZXhhbXBsZSBpdCBzZWVtcyB0aGF0IGl0
IHNvbWVob3cgZG9lcyBkbyBhIHJlYWQKY29tbWFuZAphdCB0aGUgZW5kIG9mIHRoaXMgcGFydGl0
aW9uLiBUaGF0IHdoYXQgdGVzdHMgYXJlIGZvci4KCj4+IE5vIHBhcnRpdGlvbiBzdXBwb3J0LiBB
IEZUTCBkcml2ZXIgd2lsbCBzdG9yZSBhdCByYW5kb20gbG9jYXRpb25zIGFuZAo+PiBhIGxpbmVh
ciB1c2VyIHNwZWNpZmljIGxheW91dCBkb2VzIG5vdCBmaXQgd2l0aGluCj4+IHRoZSBnZW5lcmlj
IGNoYXJhY3RlciBvZiB0aGlzIGJhc2ljIGRyaXZlci4KPj4KCk1URCBwYXJ0aXRpb24gc3VwcG9y
dCB3b3JrcyBmaW5lLiBJdCdzIGp1c3QgdGhlIGN1cnJlbnQgY29udGVudCBvZiBteQpSSzMwNjYg
TkFORAp3cml0dGVuIHdpdGggYSBSb2NrY2hpcCBGVEwgbG9hZGVyIHRoYXQgbWFrZXMgd3JpdGUg
dGVzdHMgbm90IHNvIHNtYXJ0CmFzIEkgaGF2ZQp0byByZXByb2dyYW0gdGhlbiB3aXRoIFVTQi4g
Q2hpY2tlbiBlZ2cgcHJvYmxlbS4KCj4+IERyaXZlciBhc3N1bWVzIHRoYXQgSU8gcGlucyBhcmUg
Y29ycmVjdGx5IHNldCBieSB0aGUgYm9vdCBsb2FkZXIuCj4KPiBXaGljaCBwaW5zIGFyZSB5b3Ug
dGFsa2luZyBhYm91dD8gQXJlIHlvdSBtaXNzaW5nIGEgcGluY3RybCBkcml2ZXI/Cj4KCk5vLCBO
QU5EIHNoYXJlIHRoZSBzYW1lIGRhdGEgSU8gcGlucyBhcyBlbW1jLgpTZXQgZGlyZWN0IGluIGdy
ZlJlZywgbm90IHdpdGggcGluY3RybC4KRXZlcnkgUm9ja2NoaXAgZ3JmUmVnIGlzIGRpZmZlcmVu
dCwgc28gbGVhdmUgaXQgb3V0IGZvciBub3cuCkZvciBteSBMaW51eCBURVNUIGRyaXZlciBub3Qg
YSBpc3N1ZSBhcyB0aGF0IGlzIGFscmVhZHkgZG9uZQpieSB0aGUgbG9hZGVyLgoKV291bGQgeW91
IGxpa2UgdGhpcyBncmYgdGhpbmcgaW5jbHVkZWQgaW4gYSBMaW51eCBkcml2ZXIgZm9yIGV2ZXJ5
IFNvYz8KCj4+Cj4+IEZpeGVkIHRpbWluZyBzZXR0aW5nLgoKTWVudGlvbmVkIGZvciBjb21wbGV0
ZW5lc3MuCgo+Pgo+PiBSSzMyMjhBL1JLMzIyOEIgY29tcGF0aWJpbGl0eSB2ZXJzaW9uIDcwMSB1
bmtub3duCj4+IFJWMTEwOCBuYW5kIHZlcnNpb24gdW5rbm93bgoKQ2FuIFNoYXduIExpbiBvciBz
b21lb25lIGVsc2UgaGVscCBoZXJlPwpSVjExMDggVFJNIChtYW51YWwpIGlzIHN0aWxsIG1pc3Np
bmc/Cgo+PgoKWy4uXQoKSGF2ZSBmdW4hCgovLy8vLy8vLy8vLy8vLy8vLy8vLy8KRnJvbSByazMw
NjZhLmR0c2k6ClNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQpDb3B5
cmlnaHQgKGMpIDIwMTMgTXVuZG9SZWFkZXIgUy5MLgoKCQllbW1jIHsKCQkJZW1tY19jbGs6IGVt
bWMtY2xrIHsKCQkJCXJvY2tjaGlwLHBpbnMgPSA8MyBSS19QRDcgMiAmcGNmZ19wdWxsX2RlZmF1
bHQ+OwoJCQl9OwoKCQkJZW1tY19jbWQ6IGVtbWMtY21kIHsKCQkJCXJvY2tjaGlwLHBpbnMgPSA8
NCBSS19QQjEgMiAmcGNmZ19wdWxsX2RlZmF1bHQ+OwoJCQl9OwoKCQkJZW1tY19yc3Q6IGVtbWMt
cnN0IHsKCQkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQjIgMiAmcGNmZ19wdWxsX2RlZmF1bHQ+
OwoJCQl9OwoKCQkJLyoKCQkJICogVGhlIGRhdGEgcGlucyBhcmUgc2hhcmVkIGJldHdlZW4gbmFu
ZGMgYW5kIGVtbWMgYW5kCgkJCSAqIG5vdCBhY2Nlc3NpYmxlIHRocm91Z2ggcGluY3RybC4gQWxz
byB0aGV5IHNob3VsZCd2ZQoJCQkgKiBiZWVuIGFscmVhZHkgc2V0IGNvcnJlY3RseSBieSBmaXJt
d2FyZSwgYXMKCQkJICogZmxhc2gvZW1tYyBpcyB0aGUgYm9vdC1kZXZpY2UuCgkJCSAqLwoJCX07
CgovLy8vLy8vLy8vLy8vLy8vLy8vLy8KRnJvbSBwaW5jdHJsX3JrMzA2Ni5jOgpTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogICAgIEdQTC0yLjArCkNvcHlyaWdodCAyMDE3IFBhd2XFgiBKYXJvc3oK
CnN0YXRpYyB2b2lkIHBpbmN0cmxfcmszMDY2X25hbmRfY29uZmlnKHN0cnVjdCByazMwNjZfZ3Jm
ICpncmYpCnsKCXJrX2NscnNldHJlZygmZ3JmLT5zb2NfY29uMCwKCQkgICAgIEVNTUNfRkxBU0hf
U0VMX01BU0ssCgkJICAgICAwIDw8IEVNTUNfRkxBU0hfU0VMX1NISUZUKTsKCXJrX2NscnNldHJl
ZygmZ3JmLT5ncGlvM2RfaW9tdXgsCgkJICAgICBHUElPM0Q3X01BU0ssCgkJICAgICBHUElPM0Q3
X0ZMQVNIX0RRUyA8PCBHUElPM0Q3X1NISUZUKTsKfQoKLy8vLy8vLy8vLy8vLy8vLy8vLy8vCkZv
ciBFTU1DOgoKR1JGX0dQSU9fSU9NVVhbM10uR1BJT0RfSU9NVVggPSAoKDB4Mzw8MTQpPDwxNil8
KDB4Mjw8MTQpOyAvLyBkcXMKR1JGX0dQSU9fSU9NVVhbNF0uR1BJT0JfSU9NVVggPSAoKDB4Zjw8
Mik8PDE2KXwoMHhhPDwyKTsgICAvLyBjbWQscnN0bgpHUkZfU09DX0NPTlswXSA9ICgoMHgxPDwx
MSk8PDE2KXwoMHgxPDwxMSk7ICAgICAgICAgICAgICAgIC8vIGVtbWMKZGF0YTAtNyx3cAoKLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vCgpHUkZfU09DX0NPTjAgUkszMDY2OgpCaXQgQXR0ciBSZXNldCBW
YWx1ZSAgICAgICAgRGVzY3JpcHRpb24KMzE6MTYgUlcgMHgwIHdyaXRlX2VuYWJsZSAgIGJpdCAw
fmJpdCAxNSB3cml0ZSBlbmFibGUKCjExICAgIFJXIDB4MCBlbW1jX2ZsYXNoX3NlbCBlbW1jIGZs
YXNoIHNlbGVjdCB1c2VkIGZvciBpb211eAogICAgICAgICAgICAgICAgICAgICAgICAgICAgSU9f
RkxBU0hfREFUQVs3OjBdICwgSU9fRkxBU0hfV1AgYXJlCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzZWxlY3RlZCBmb3IgZW1tYyBpbnN0ZWFkIG9mIGZsYXNoCgovLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vCgovLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAovKgogKiBDb3B5cmlnaHQgKGMpIDIwMTksIEpvaGFu
IEpvbmtlciA8amJ4NjI0NEBnbWFpbC5jb20+CiAqCiAqIEJhc2VkIG9uOgogKgpodHRwczovL2dp
dGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsL2Jsb2IvZGV2ZWxvcC00LjQvZHJpdmVycy9y
a19uYW5kL3JrX2Z0bF9hcm1fdjcuUwogKgpodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5j
b20vcm9ja2NoaXAtbGludXgva2VybmVsL2RldmVsb3AtNC40L2RyaXZlcnMvcmtfbmFuZC9ya19m
dGxfYXJtX3Y3LlMKICogQ29weXJpZ2h0IChjKSAyMDE2LTIwMTgsIEZ1emhvdSBSb2NrY2hpcCBF
bGVjdHJvbmljcyBDby4sIEx0ZAogKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsK
ICoKICoKaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L3UtYm9vdC9ibG9iL25leHQt
ZGV2L2RyaXZlcnMvcmtuYW5kL3JrX2Z0bF9hcm1fdjcuUwogKgpodHRwczovL3Jhdy5naXRodWJ1
c2VyY29udGVudC5jb20vcm9ja2NoaXAtbGludXgvdS1ib290L25leHQtZGV2L2RyaXZlcnMvcmtu
YW5kL3JrX2Z0bF9hcm1fdjcuUwogKiBDb3B5cmlnaHQgKGMpIDIwMTYtMjAxOCwgRnV6aG91IFJv
Y2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkCiAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wKwogKi8KCnN0cnVjdCBuYW5kX3JlcSB7Cgl1aW50MzJfdCBzdGF0dXM7Cgl1aW50MzJf
dCBwYWdlX2FkZHI7Cgl1aW50MzJfdCAqcF9kYXRhOwoJdWludDE2X3QgKnBfc3BhcmU7Cgl1aW50
MzJfdCBscG47Cgl1aW50MzJfdCByZXMyOwoJdWludDMyX3QgcmVzMzsKCXVpbnQzMl90IHJlczQ7
Cgl1aW50MzJfdCByZXM1Owp9OwoKc3RydWN0IHRhZ0JidEluZm8gewoJdWludDE2X3QgaWQ7Cgl1
aW50MTZfdCBwYWdlOwoJdWludDE2X3QgcmVnaW9uOwoJdWludDE2X3QgY291bnRlcjsKCXVpbnQz
Ml90IGluZGV4OwoJdWludDE2X3QgYmxrX2NudFs4XTsKCXVpbnQzMl90ICptYXBbOF07Cn07Cgpz
dHJ1Y3QgdGFnX3N5c19zcGFyZV9idWYgewoJdWludDE2X3QgdGFnOwoJdWludDE2X3QgaWQ7Cgl1
aW50MzJfdCBpbmRleDsKCXVpbnQxNl90IHJlZ2lvbjsKCXVpbnQxNl90IGJiX251bTsKCXVpbnQz
Ml90IHN5c19ibGtzX3Blcl9wbGFuZTsKfTsKCnN0cnVjdCB0YWdCYnRJbmZvIGdCYnRJbmZvOwpz
dHJ1Y3QgbmFuZF9yZXEgcmVxX3N5czsKCnVpbnQzMl90IEZ0bEJibUlzQmFkQmxvY2sodWludDMy
X3QgbGJuKQp7CglyZXR1cm4gKGdCYnRJbmZvLm1hcFsodWludDE2X3QpKGxibiAvIGNfZnRsX25h
bmRfYmxrc19wZXJfZGllKV0KCQlbbGJuICUgY19mdGxfbmFuZF9ibGtzX3Blcl9kaWUgPj4gNV0g
Pj4KCQkobGJuICUgY19mdGxfbmFuZF9ibGtzX3Blcl9kaWUgJiAweDFGKSkgJiAxOwp9CgppbnQg
RnRsTG9hZEJidCh2b2lkKQp7CglzdHJ1Y3QgdGFnX3N5c19zcGFyZV9idWYgKnBfc3BhcmU7Cgl1
aW50MzJfdCBjb3VudGVyOwoJaW50IGk7Cgl1aW50MzJfdCBpbmRleDsKCXVpbnQxNl90IHBhZ2Ux
OwoJdWludDMyX3QgcGFnZTI7Cgl1aW50OF90ICpwX2J1ZjsKCXVpbnQzMl90ICpwX21hcDE7Cgl1
aW50OF90ICpwX21hcDI7Cgl1aW50MTZfdCByZWdpb247CglzaXplX3Qgc2l6ZTsKCXVpbnQxNl90
IHN5c19ibGtzX3Blcl9wbGFuZTsKCXVpbnQzMl90IHRtcDsKCglGVExfREJHKCk7CgoJcmVxX3N5
cy5wX2RhdGEgPSBwX3N5c19kYXRhX2J1ZjsKCXBfc3BhcmUgPSAoc3RydWN0IHRhZ19zeXNfc3Bh
cmVfYnVmICopcF9zeXNfc3BhcmVfYnVmOwoJcmVxX3N5cy5wX3NwYXJlID0gcF9zeXNfc3BhcmVf
YnVmOwoJRnRsQmJ0TWVtSW5pdCgpOwoJZm9yIChpID0gKHVpbnQxNl90KShjX2Z0bF9uYW5kX2Js
a3NfcGVyX2RpZSAtIDEpOwoJICAgICBjX2Z0bF9uYW5kX2Jsa3NfcGVyX2RpZSAtIDQ3IDw9IGk7
CgkgICAgIGkgPSAodWludDE2X3QpKGkgLSAxKSkgewoJCXJlcV9zeXMucGFnZV9hZGRyID0gaSA8
PCAxMDsKCQlGbGFzaFJlYWRQYWdlcygmcmVxX3N5cywgMXUsIDF1KTsKCQlpZiAocmVxX3N5cy5z
dGF0dXMgPT0gTkFORF9TVFNfRVJST1IpIHsKCQkJKytyZXFfc3lzLnBhZ2VfYWRkcjsKCQkJRmxh
c2hSZWFkUGFnZXMoJnJlcV9zeXMsIDF1LCAxdSk7CgkJfQoJCWlmIChyZXFfc3lzLnN0YXR1cyAh
PSBOQU5EX1NUU19FUlJPUiAmJgoJCSAgICBwX3NwYXJlLT50YWcgPT0gSURfQkJUQikgewoJCQlp
bmRleCA9IHBfc3BhcmUtPmluZGV4OwoJCQlnQmJ0SW5mby5pZCA9IGk7CgkJCWdCYnRJbmZvLmlu
ZGV4ID0gaW5kZXg7CgkJCWdCYnRJbmZvLnJlZ2lvbiA9IHBfc3BhcmUtPnJlZ2lvbjsKCQkJYnJl
YWs7CgkJfQoJfQoJaWYgKGdCYnRJbmZvLmlkID09IDB4RkZGRikKCQlyZXR1cm4gLTE7CglpZiAo
Z0JidEluZm8ucmVnaW9uICE9IDB4RkZGRikgewoJCXJlcV9zeXMucGFnZV9hZGRyID0gZ0JidElu
Zm8ucmVnaW9uIDw8IDEwOwoJCUZsYXNoUmVhZFBhZ2VzKCZyZXFfc3lzLCAxdSwgMXUpOwoJCWlm
IChyZXFfc3lzLnN0YXR1cyAhPSBOQU5EX1NUU19FUlJPUiAmJgoJCSAgICBwX3NwYXJlLT50YWcg
PT0gSURfQkJUQiAmJgoJCSAgICBwX3NwYXJlLT5pbmRleCA+IGdCYnRJbmZvLmluZGV4KSB7CgkJ
CWdCYnRJbmZvLmluZGV4ID0gcF9zcGFyZS0+aW5kZXg7CgkJCXJlZ2lvbiA9IHBfc3BhcmUtPnJl
Z2lvbjsKCQkJZ0JidEluZm8uaWQgPSBnQmJ0SW5mby5yZWdpb247CgkJCWdCYnRJbmZvLnJlZ2lv
biA9IHJlZ2lvbjsKCQl9Cgl9CglwYWdlMSA9IEZ0bEdldExhc3RXcml0dGVuUGFnZShnQmJ0SW5m
by5pZCwgMXUpOwoJcGFnZTIgPSAodWludDE2X3QpcGFnZTE7CglnQmJ0SW5mby5wYWdlID0gcGFn
ZTEgKyAxOwoJd2hpbGUgKChwYWdlMiAmIDB4ODAwMDAwMDApID09IDApIHsKCQlyZXFfc3lzLnBh
Z2VfYWRkciA9IHBhZ2UyIHwgKGdCYnRJbmZvLmlkIDw8IDEwKTsKCQlyZXFfc3lzLnBfZGF0YSA9
IHBfc3lzX2RhdGFfYnVmOwoJCUZsYXNoUmVhZFBhZ2VzKCZyZXFfc3lzLCAxdSwgMXUpOwoJCWlm
IChyZXFfc3lzLnN0YXR1cyAhPSBOQU5EX1NUU19FUlJPUiAmJgoJCSAgICBwX3NwYXJlLT50YWcg
PT0gSURfQkJUQikgewoJCQlnb3RvIGxhYmVsXzE7CgkJfQoJCXBhZ2UyID0gKHVpbnQxNl90KShw
YWdlMiAtIDEpOwoJfQoJRlRMX0VSUigpOwpsYWJlbF8xOgoJc3lzX2Jsa3NfcGVyX3BsYW5lID0g
cF9zcGFyZS0+c3lzX2Jsa3NfcGVyX3BsYW5lOwoJZ0JidEluZm8uY291bnRlciA9IHBfc3BhcmUt
PmJiX251bTsKCWlmIChzeXNfYmxrc19wZXJfcGxhbmUgIT0gMHhGRkZGICYmCgkgICAgc3lzX2Js
a3NfcGVyX3BsYW5lICE9IGNfZnRsX25hbmRfc3lzX2Jsa3NfcGVyX3BsYW5lKSB7CgkJdG1wID0g
KHVpbnQzMl90KWNfZnRsX25hbmRfYmxrX3Blcl9wbGFuZSA+PiAyOwoJCWlmIChjX2Z0bF9uYW5k
X3N5c19ibGtzX3Blcl9wbGFuZSA8IHRtcCAmJgoJCSAgICBzeXNfYmxrc19wZXJfcGxhbmUgPCB0
bXApIHsKCQkJRnRsU3lzQmxrTnVtSW5pdChzeXNfYmxrc19wZXJfcGxhbmUpOwoJCX0KCX0KCXBf
bWFwMSA9ICh1aW50MzJfdCAqKSZnQmJ0SW5mby5ibGtfY250WzZdOwoJY291bnRlciA9IDA7Cgl3
aGlsZSAoY291bnRlciA8IGNfZnRsX25hbmRfZGllX251bSkgewoJCXBfbWFwMiA9ICh1aW50OF90
ICopcF9tYXAxWzFdOwoJCSsrcF9tYXAxOwoJCXNpemUgPSA0ICogY19mdGxfbmFuZF9iYm1fYnVm
X3NpemU7CgkJcF9idWYgPSAodWludDhfdCAqKXJlcV9zeXMucF9kYXRhICsgY291bnRlcisrICog
c2l6ZTsKCQlmdGxfbWVtY3B5KHBfbWFwMiwgcF9idWYsIHNpemUpOwoJfQoJcmV0dXJuIDA7Cn0K
CnZvaWQgRnRsQmJtVGJsRmx1c2godm9pZCkKewoJc3RydWN0IHRhZ19zeXNfc3BhcmVfYnVmICpw
X3NwYXJlOwoJdWludDMyX3QgYmJfbnVtOwoJdWludDE2X3QgY291bnRlcjE7Cgl1aW50MzJfdCBj
b3VudGVyMjsKCXVpbnQzMl90IGRpZV9jb3VudGVyOwoJdWludDE2X3QgbGJuMTsKCXVpbnQzMl90
IGxibjI7Cgl1aW50MzJfdCAqcF9tYXA7Cgl1aW50MzJfdCBzZWN0b3I7Cgl1aW50OF90ICp0bXBf
cF9tYXA7CgoJRlRMX0RCRygpOwoKCWRpZV9jb3VudGVyID0gMDsKCWlmICghZ19mbGFzaF9yZWFk
X29ubHlfZW4pIHsKCQlwX21hcCA9ICh1aW50MzJfdCAqKSZnQmJ0SW5mby5ibGtfY250WzZdOwoJ
CXJlcV9zeXMucF9zcGFyZSA9IHBfc3lzX3NwYXJlX2J1ZjsKCQlyZXFfc3lzLnBfZGF0YSA9IHBf
c3lzX2RhdGFfYnVmOwoJCWZ0bF9tZW1zZXQoCgkJCXBfc3lzX2RhdGFfYnVmLAoJCQlnX2ZsYXNo
X3JlYWRfb25seV9lbiwKCQkJY19mdGxfbmFuZF9ieXRlX3Blcl9wYWdlKTsKCQl3aGlsZSAoKHVp
bnQzMl90KWRpZV9jb3VudGVyIDwgY19mdGxfbmFuZF9kaWVfbnVtKSB7CgkJCXRtcF9wX21hcCA9
ICh1aW50OF90ICopcF9tYXBbMV07CgkJCSsrcF9tYXA7CgkJCXNlY3RvciA9IGRpZV9jb3VudGVy
KysKCQkJCSAqIGNfZnRsX25hbmRfYmJtX2J1Zl9zaXplOwoJCQlmdGxfbWVtY3B5KAoJCQkJJnJl
cV9zeXMucF9kYXRhW3NlY3Rvcl0sCgkJCQl0bXBfcF9tYXAsCgkJCQk0ICogY19mdGxfbmFuZF9i
Ym1fYnVmX3NpemUpOwoJCX0KCQlwX3NwYXJlID0gKHN0cnVjdCB0YWdfc3lzX3NwYXJlX2J1ZiAq
KXJlcV9zeXMucF9zcGFyZTsKCQljb3VudGVyMSA9IDA7CgkJY291bnRlcjIgPSAwOwoJCWZ0bF9t
ZW1zZXQocmVxX3N5cy5wX3NwYXJlLCAweEZGdSwgMTZ1KTsKCQlwX3NwYXJlLT50YWcgPSBJRF9C
QlRCOwoJCXBfc3BhcmUtPmluZGV4ID0gZ0JidEluZm8uaW5kZXg7CgkJcF9zcGFyZS0+aWQgPSBn
QmJ0SW5mby5pZDsKCQlwX3NwYXJlLT5yZWdpb24gPSBnQmJ0SW5mby5yZWdpb247CgkJcF9zcGFy
ZS0+YmJfbnVtID0gZ0JidEluZm8uY291bnRlcjsKCQlwX3NwYXJlLT5zeXNfYmxrc19wZXJfcGxh
bmUgPSBjX2Z0bF9uYW5kX3N5c19ibGtzX3Blcl9wbGFuZTsKCQlkbyB7CgkJCXdoaWxlICgxKSB7
CgkJCQlyZXFfc3lzLnBfZGF0YSA9IHBfc3lzX2RhdGFfYnVmOwoJCQkJYmJfbnVtID0gcF9zcGFy
ZS0+YmJfbnVtOwoJCQkJcmVxX3N5cy5wX3NwYXJlID0gcF9zeXNfc3BhcmVfYnVmOwoJCQkJcmVx
X3N5cy5zdGF0dXMgPSBOQU5EX1NUU19PSzsKCQkJCXJlcV9zeXMucGFnZV9hZGRyID0gZ0JidElu
Zm8ucGFnZQoJCQkJCQkgICAgfCAoZ0JidEluZm8uaWQgPDwgMTApOwoJCQkJRlRMX0lORk8oCgkJ
CQkJIkZ0bEJibVRibEZsdXNoIGlkPSV4LHBhZ2U9JXgsIgoJCQkJCSJwcmV2aWQ9JXggY250PSVk
XG4iLAoJCQkJCWdCYnRJbmZvLmlkLAoJCQkJCWdCYnRJbmZvLnBhZ2UsCgkJCQkJZ0JidEluZm8u
cmVnaW9uLAoJCQkJCWJiX251bSk7CgkJCQlpZiAoZ0JidEluZm8ucGFnZSA+PQoJCQkJICAgIGNf
ZnRsX25hbmRfcGFnZV9wZXJfc2xjX2JsayAtIDEpIHsKCQkJCQlsYm4xID0gZ0JidEluZm8uaWQ7
CgkJCQkJZ0JidEluZm8ucGFnZSA9IDA7CgkJCQkJcF9zcGFyZS0+aW5kZXggPSArK2dCYnRJbmZv
LmluZGV4OwoJCQkJCXBfc3BhcmUtPnJlZ2lvbiA9IGxibjE7CgkJCQkJbGJuMiA9IGdCYnRJbmZv
LnJlZ2lvbjsKCQkJCQlnQmJ0SW5mby5yZWdpb24gPSBsYm4xOwoJCQkJCWdCYnRJbmZvLmlkID0g
bGJuMjsKCQkJCQlyZXFfc3lzLnBhZ2VfYWRkciA9IGxibjIgPDwgMTA7CgkJCQkJcmVxX2VyYXNl
LT5wYWdlX2FkZHIgPSBsYm4yIDw8IDEwOwoJCQkJCUZsYXNoRXJhc2VCbG9ja3MoCgkJCQkJCXJl
cV9lcmFzZSwKCQkJCQkJMXUsCgkJCQkJCTF1KTsKCQkJCX0KCQkJCUZsYXNoUHJvZ1BhZ2VzKCZy
ZXFfc3lzLCAxdSwgMXUsIDF1KTsKCQkJCSsrZ0JidEluZm8ucGFnZTsKCQkJCWlmIChyZXFfc3lz
LnN0YXR1cyA9PSBOQU5EX1NUU19FUlJPUikKCQkJCQlicmVhazsKCQkJCWlmICgrK2NvdW50ZXIy
ICE9IDEgJiYKCQkJCSAgICByZXFfc3lzLnN0YXR1cyAhPSBOQU5EX1NUU19SRUZSRVNIKSB7CgkJ
CQkJcmV0dXJuOwoJCQkJfQoJCQl9CgkJCSsrY291bnRlcjE7CgkJCUZUTF9JTkZPKAoJCQkJIkZ0
bEJibVRibEZsdXNoIGVycm9yOiV4XG4iLAoJCQkJcmVxX3N5cy5wYWdlX2FkZHIpOwoJCX0gd2hp
bGUgKGNvdW50ZXIxIDw9IDN1KTsKCQlGVExfSU5GTygKCQkJIkZ0bEJibVRibEZsdXNoIGVycm9y
ID0gJXggZXJyb3IgY291bnQgPSAlZFxuIiwKCQkJcmVxX3N5cy5wYWdlX2FkZHIsCgkJCWNvdW50
ZXIxKTsKCQlnX2ZsYXNoX3JlYWRfb25seV9lbiA9IDE7Cgl9Cn0KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
