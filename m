Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836B418D2F4
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Mar 2020 16:32:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rmqqgz1JKwkhmB0TJlO6LOIUFnwtUIATIFriIgXG5js=; b=MwpJ3ZiV84uv/m
	9iSPVD3bOld0gD4I9xuFdrgCIaARjSVyJgy18Du+CFCkxk45GNjY+UnZikTEGLKjFrPADEkU6VLV9
	PibyxPhICPGYD+H09IdKs0i/wNd8UCGpO2BwHfqQrNNo9vW03fo8AH2W/HZAIyGjwN5a/PXeIE5s3
	AWCB2kH+uwairp8jiat5C9WTLbEkkNKI9EWL1Oaujfodus2YDPT4NiKgGirrBcouRYUXrsFd1p91H
	u0fzU1Qeua6Gmx45PSL+F/nMftez+R9vTfLE56BgZF7JPeG7tyAzT2jQbpeQmp4j2oA5Ak5kOk4Ku
	XXRX9hBfd3qiI5Q2DhHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJdT-0003u9-5Q; Fri, 20 Mar 2020 15:32:35 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJdP-0003tW-Ku; Fri, 20 Mar 2020 15:32:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id a25so8037223wrd.0;
 Fri, 20 Mar 2020 08:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qI/ekdQ6NTichE/0bKB1Vdtlur7rri+ctDd3zV+FIfo=;
 b=C0eW+4oXk9jMixKjJqNYE67jbhCwvTa4xW5hkvSdPdhlRJXZWVToo+RexnVeIytMbP
 pIC4eEFNz6Rk40YlzT3e4xgxw8si4L4WUlDUmQ7a3ZQ93fbu0XSH9prtaNNNhnHFZ23P
 uAAUtWvqvi8iNbMnw9NHcXec+QHUiRmrmOxHK7LMXYls79wCkSFfiTb6paIep5s1UnCs
 19/EylMcXuF28iTHHz1RK4XZR+hQAL/FUfv4u+46cuSQenadDfyjd7c1MM16EdEy4jz1
 v1Db8X+lwMn1av7BSFhl4ursrk6ST0cvEyENIMiVcw66CWpRFVcQ6gNeOFnmC6TuyqV6
 zWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qI/ekdQ6NTichE/0bKB1Vdtlur7rri+ctDd3zV+FIfo=;
 b=REE21Ob4EAESC6JQRzmQytVaqTd5V5a7yF0SimF4hUJOI9EHqJ0YmppB4KxjjzvE76
 mAT74xlQhOzQfq3k8zk3IJ/XQ7OrQ+SkKvuNj5O/ICVAiOk0+kyL1qlOEGqZLNgddJlp
 BCq9jLLkDUW6pHoMOYbCEumfYfr3gKrucRisDaOZ20T/UhKg5GECdoEshTvLZnSk75Gp
 IETiYBbjfDhYxoDFjxJaVgP3uFcBSmpSvX+LzFbgzSNsdQLhvLfZHVfWO++FH3iijv03
 yKquYPW3DruzlZtpJXrcYnD/Ry23xrAdEFRWxGr1DJs8IQtjHV673HjWoTHcyY5NxP7G
 swzg==
X-Gm-Message-State: ANhLgQ37IchBIzGJKOQ+C6EyBEjY0HLTT5mPNarFbjggKQBMmwDCBvbR
 RtInW965qV9yl2sn9xGKC/7xWSkL
X-Google-Smtp-Source: ADFU+vu8yLS6TGTVOmF+EOqWYa35tmQ5sLhPHUdj4QgcnYPcd0D6HZKHb0jhGTV1cyG9yEo6HMUj8A==
X-Received: by 2002:adf:dc4f:: with SMTP id m15mr12438120wrj.219.1584718348812; 
 Fri, 20 Mar 2020 08:32:28 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b15sm8612688wru.70.2020.03.20.08.32.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2020 08:32:28 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
References: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>
 <20200320093342.15470-3-yifeng.zhao@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <3352edf3-7951-8760-7ee2-0cffa77a8bf8@gmail.com>
Date: Fri, 20 Mar 2020 16:32:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200320093342.15470-3-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_083231_690645_03031009 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgWWlmZW5nLAoKRMOpasOgIHZ1LgoKVGhlIERvY3VtZW50YXRpb24vIHBvcnRpb24gb2YgdGhl
IHBhdGNoIHNob3VsZCBjb21lIGluIHRoZSBzZXJpZXMgYmVmb3JlCnRoZSBjb2RlIGltcGxlbWVu
dGluZyB0aGUgYmluZGluZy4KCmNvdmVyIGxldHRlcgpiaW5kaW5nCmRyaXZlcgpkdHMgcGF0Y2hl
cwoKVGVzdCB3aXRoIGxpbnV4LW5leHQgZm9yIE1BSU5UQUlORVIgcGF0Y2guIEl0IGhhcyBjaGFu
Z2VkLgoKZ2l0IGNsb25lIC0tIGRlcHRoIDEKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdAoKQWxzbyBpbmNsdWRlIGFsbCBt
YWlsIGxpc3RzIGZvdW5kIHdpdGg6Ci4vc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtLW5vZ2l0
LWZhbGxiYWNrIC0tbm9naXQKCk9uIDMvMjAvMjAgMTA6MzMgQU0sIFlpZmVuZyBaaGFvIHdyb3Rl
Ogo+IERvY3VtZW50YXRpb24gc3VwcG9ydCBmb3IgUm9ja2NoaXAgUkszeHh4IE5BTkQgZmxhc2gg
Y29udHJvbGxlcnMKPgo+IFNpZ25lZC1vZmYtYnk6IFlpZmVuZyBaaGFvIDx5aWZlbmcuemhhb0By
b2NrLWNoaXBzLmNvbT4KPiAtLS0KPgo+IENoYW5nZXMgaW4gdjQ6Cj4gLSBUaGUgY29tcGF0aWJs
ZSBkZWZpbmUgd2l0aCBya3h4X25mYwo+IC0gQWRkIGFzc2lnbmVkLWNsb2Nrcwo+IC0gRml4IHNv
bWUgd3JvbmcgZGVmaW5lCj4KPiBDaGFuZ2VzIGluIHYzOgo+IC0gQ2hhbmdlIHRoZSB0aXRsZSBm
b3IgdGhlIGR0LWJpbmRpbmdzCj4KPiBDaGFuZ2VzIGluIHYyOiBOb25lCj4KPiAgLi4uL2JpbmRp
bmdzL210ZC9yb2NrY2hpcCxuYW5kLnlhbWwgICAgICAgICAgIHwgMTAxICsrKysrKysrKysrKysr
KysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTAxIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0CkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvcm9ja2NoaXAsbmFu
ZC55YW1sCj4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tdGQvcm9ja2NoaXAsbmFuZC55YW1sCmIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL210ZC9yb2NrY2hpcCxuYW5kLnlhbWwKCkkgdGhpbmsgcm9ja2NoaXAsbmFuZC1jb250cm9s
bGVyLnlhbWwgaXMgcHJlZmVycmVkLgpBIGRyaXZlciBuYW1lZCByb2NrY2hpcC1uYW5kLWNvbnRy
b2xsZXIuYyB3b3VsZCBiZSBuaWNlIQpTZWUgY29tbWVudHMgb24gbXkgcHJldmlvdXMgc2VyaWVz
IGJ5IE1pcXVlbCBSYXluYWwuCgo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAw
MDAwMDAwLi45MDdhZjBkNTJiNmIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9yb2NrY2hpcCxuYW5kLnlhbWwKPiBAQCAtMCwwICsx
LDEwMSBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJT
RC0yLUNsYXVzZSkKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL210ZC9yb2NrY2hpcCxuYW5kLnlhbWwjCgpyb2NrY2hpcCxuYW5kLWNvbnRy
b2xsZXIueWFtbCMKCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVt
YXMvY29yZS55YW1sIwo+ICsKCj4gK3RpdGxlOiBSb2NrY2hpcCBTb0NzIE5BTkQgRkxBU0ggQ29u
dHJvbGxlciAoTkZDKSBEZXZpY2UgVHJlZSBCaW5kaW5ncwoKTWF5YmUgY2hhbmdlIHRvOgoKdGl0
bGU6IFJvY2tjaGlwIFNvQ3MgTkFORCBGTEFTSCBDb250cm9sbGVyIChORkMpCgo+ICsKPiArYWxs
T2Y6Cj4gKyAgLSAkcmVmOiAibmFuZC1jb250cm9sbGVyLnlhbWwiCgpBZGQgIwoKICAtICRyZWY6
ICJuYW5kLWNvbnRyb2xsZXIueWFtbCMiCgo+ICsKPiArbWFpbnRhaW5lcnM6Cgo+ICsgIC0gWWlm
ZW5nIFpoYW8gPHlpZmVuZy56aGFvQHJvY2stY2hpcHMuY29tPgoKQWRkIG9ubHkgcGVvcGxlIHdp
dGggbWFpbnRhaW5lcnMgcmlnaHRzLgoKLSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
PgoKPiArCj4gK3Byb3BlcnRpZXM6Cgo+ICsgICIjYWRkcmVzcy1jZWxscyI6IHRydWUKPiArICAi
I3NpemUtY2VsbHMiOiB0cnVlCgpBbHJlYWR5IGluIG5hbmQtY29udHJvbGxlci55YW1sCgo+ICsK
PiArICBjb21wYXRpYmxlOgo+ICsgICAgZW51bToKCj4gKyAgICAgIC0gcm9ja2NoaXAscHgzMF9u
ZmMKPiArICAgICAgLSByb2NrY2hpcCxyazMzMDhfbmZjCj4gKyAgICAgIC0gcm9ja2NoaXAscnYx
MTA4X25mYwo+ICsgICAgICAtIHJvY2tjaGlwLHJrMzA2Nl9uZmMKPiArICAgICAgLSByb2NrY2hp
cCxyazMxODhfbmZjCj4gKyAgICAgIC0gcm9ja2NoaXAscmszMjg4X25mYwo+ICsgICAgICAtIHJv
Y2tjaGlwLHJrMzM2OF9uZmMKPiArICAgICAgLSByb2NrY2hpcCxyazI5MjhfbmZjCj4gKyAgICAg
IC0gcm9ja2NoaXAscmszMDM2X25mYwo+ICsgICAgICAtIHJvY2tjaGlwLHJrMzEyOF9uZmMKPiAr
ICAgICAgLSByb2NrY2hpcCxyazMyMjhfbmZjCgpzb3J0L2Zvcm1hdApBc2sgcm9iaCBmb3IgZXhh
Y3QgZm9ybWF0LgoKLSByb2NrY2hpcCxyazMwNjYtbmFuZC1jb250cm9sbGVyCgoKQWxzbyBhZGQg
ZHRzaSBwYXRjaGVzIGluIHRoaXMgc2VyaWUgZm9yIHN1cHBvcnRlZCBTb0NzIGluIG1haW4ga2Vy
bmVsLApzbyB3ZSBjYW4gY2hlY2sgdGhlbSB3aXRoIHlhbWwKCj4gKwo+ICsgIHJlZzoKPiArICAg
IG1heEl0ZW1zOiAxCj4gKwo+ICsgIGludGVycnVwdHM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsK
PiArICBjbG9ja3M6CgptaW5JdGVtczogMQoKPiArICAgIGl0ZW1zOgoKPiArICAgICAgLSBkZXNj
cmlwdGlvbjogTW9kdWxlIENsb2NrCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEJ1cyBDbG9jawoK
c3dhcApyazMwNjYgb25seSBoYXMgYWhiCkNoYW5nZSB0aGlzIGFsc28gaW4gc291cmNlIQoKLSBk
ZXNjcmlwdGlvbjogQnVzIENsb2NrCi0gZGVzY3JpcHRpb246IE1vZHVsZSBDbG9jawoKPiArCj4g
KyAgY2xvY2stbmFtZXM6CgptaW5JdGVtczogMQoKPiArICAgIGl0ZW1zOgoKPiArICAgICAgLSBj
b25zdDogbmZjCj4gKyAgICAgIC0gY29uc3Q6IGFoYgoKc3dhcApyazMwNjYgb25seSBoYXMgYWhi
CgotIGNvbnN0OiBhaGIKLSBjb25zdDogbmZjCgo+ICsKPiArcGF0dGVyblByb3BlcnRpZXM6Cgo+
ICsgICJebmFuZEBbMC0zXSQiOgoKVXNlIHNhbWUgbmFtZSBhcyBpbiBuYW5kLWNvbnRyb2xsZXIu
eWFtbCBmb3IgaW5oZXJpdGFuY2U/CgogICJebmFuZEBbYS1mMC05XSQiOgoKPiArICAgIHR5cGU6
IG9iamVjdAo+ICsgICAgcHJvcGVydGllczoKPiArICAgICAgcmVnOgo+ICsgICAgICAgIG1pbmlt
dW06IDAKPiArICAgICAgICBtYXhpbXVtOiAzCj4gKwoKbmFuZC1lY2MtbW9kZT8KCj4gKyAgICAg
IG5hbmQtZWNjLXN0ZXAtc2l6ZToKPiArICAgICAgICBjb25zdDogMTAyNAo+ICsKPiArICAgICAg
bmFuZC1lY2Mtc3RyZW5ndGg6Cj4gKyAgICAgICAgZW51bTogWzE2LCAyNCAsIDQwLCA2MCwgNzBd
CgpyZW1vdmUgc3BhY2UgICAgICAgICAgICBeCgo+ICsKPiArICAgICAgbmFuZC1idXMtd2lkdGg6
Cj4gKyAgICAgICAgY29uc3Q6IDgKCnJrMzA2NiBuZWVkcyBsb3dlciBiY2ggZm9yIHIvdyBpZGIK
YWRkIGluZm8gYWJvdXQgaWRiIGJsb2NrcyB1c2VkIGFzIHZhcmlhYmxlIGluc3RlYWQgb2YgZml4
ZWQgdG8gOC4KQ2hhbmdlIHRoaXMgYWxzbyBpbiBzb3VyY2UhCkZvciBleGFtcGxlOgoKKworICAg
ICAgbmFuZC1pcy1ib290LW1lZGl1bTogdHJ1ZQorCgorICAgICAgcm9ja2NoaXAsYm9vdC1ibGtz
OgoKc3VnZ2VzdGlvbiBmcm9tIHJvYmguClNlZSBjb21tZW50cyBvbiBteSBwcmV2aW91cyBzZXJp
ZXMuCgorICAgICAgICBtaW5pbXVtOiAyCisgICAgICAgIGRlZmF1bHQ6IDE2CisgICAgICAgIGFs
bE9mOgorICAgICAgICAtICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3Vp
bnQzMgorICAgICAgICBkZXNjcmlwdGlvbjoKKyAgICAgICAgICBGb3IgbGVnYWN5IGRldmljZXMg
d2hlcmUgdGhlIGJvb3Ryb20gY2FuIG9ubHkgaGFuZGxlIDI0IGJpdApCQ0gvRUNDLgorICAgICAg
ICAgIElmIHNwZWNpZmllZCBpdCBpbmRpY2F0ZXMgdGhlIG51bWJlciBvZiBlcmFzZSBibG9ja3Mg
aW4gdXNlIGJ5CisgICAgICAgICAgdGhlIGJvb3Rsb2FkZXIgdGhhdCBuZWVkIGEgbG93ZXIgQkNI
L0VDQyBzZXR0aW5nLgorICAgICAgICAgIE9ubHkgdXNlZCBpbiBjb21iaW5hdGlvbiB3aXRoICdu
YW5kLWlzLWJvb3QtbWVkaXVtJy4KCj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUK
PiArICAtIHJlZwo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gY2xvY2tzCj4gKyAgLSBjbG9jay1u
YW1lcwo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cgo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiArICAgICNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9jbG9jay9yazMzMDgtY3J1Lmg+Cgpzb3J0CiAgICAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvY2xvY2svcmszMzA4LWNydS5oPgogICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVw
dC1jb250cm9sbGVyL2FybS1naWMuaD4KCj4gKyAgICBuZmM6IG5hbmQtY29udHJvbGxlckBmZjRi
MDAwMCB7Cj4gKyAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAsbmZjIjsKCnVzZSByZWFsIGNv
bXBhdGlibGUgZWxzZSBubyBjaGVjawoKPiArICAgICAgcmVnID0gPDB4MCAweGZmNGIwMDAwIDB4
MCAweDQwMDA+Owo+ICsgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgODEgSVJRX1RZUEVfTEVW
RUxfSElHSD47Cgo+ICsgICAgICBjbG9ja3MgPSA8JmNydSBTQ0xLX05BTkRDPiwgPCZjcnUgSENM
S19OQU5EQz47Cgpzd2FwCgo+ICsgICAgICBjbG9jay1uYW1lcyA9ICJuZmMiLCAiYWhiIjsKCnN3
YXAKCj4gKyAgICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmY2xrcyBTQ0xLX05BTkRDPjsKPiArICAg
ICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MTUwMDAwMDAwPjsKPiArCgo+ICsgICAgICBwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwoKcGluY3RybC1uYW1lcyBiZWxvdyBwaW5jdHJsLTAKCj4g
KyAgICAgIHBpbmN0cmwtMCA9IDwmZmxhc2hfY3NuMCAmZmxhc2hfcmR5ICZmbGFzaF9hbGUgJmZs
YXNoX2NsZQo+ICsgICAgICAgICAgICAgICAgICAmZmxhc2hfd3JuICZmbGFzaF9yZG4gJmZsYXNo
X2J1czg+OwoKc29ydC9hbGlnbgoKPiArCj4gKyAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+
ICsgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKCnNwYWNlCgo+ICsgICAgICBuYW5kQDAgewo+ICsg
ICAgICAgIHJlZyA9IDwwPjsKPiArICAgICAgICBuYW5kLWVjYy1tb2RlID0gImh3IjsKPiArICAg
ICAgICBuYW5kLWVjYy1zdHJlbmd0aCA9IDwxNj47Cj4gKyAgICAgICAgbmFuZC1lY2Mtc3RlcC1z
aXplID0gPDEwMjQ+Owo+ICsgICAgICAgIG5hbmQtYnVzLXdpZHRoID0gPDg+Owo+ICsgICAgICB9
Owo+ICsgICAgfTsKPiArCj4gKy4uLgo+IC0tCj4gMi4xNy4xCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
