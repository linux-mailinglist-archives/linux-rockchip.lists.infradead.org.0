Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22CB567F9
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Jun 2019 13:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD7df1ZEqOZg7Z9Vu5Z9vCKXyDJFvn4XDzFBAwcU0M0=; b=sby71jTqWR0RQC
	CzTN3chAx37Jho87rAjFo5JnVYCS/E+GdTlYiGXrjj8s85Fkq83KVmk1g6WySkpVw7PHKir9nuTBZ
	evUirfDmZvIkbsVxGSYE6kyjlwRswnzPEuHKjVeEe+hZLN7ka8XrE1iXrjFrcNSi2Sr+JJUAT+335
	aVZuEJsRT/i3Ry7PhjMbAuvsITEuF4zCmy4T747cRS/6Mlm0hIi+lZG+DtTQua6zaMtpireVlk2ar
	NINV+FCvZ4rzaKh1w1F6ExpU1uT2WLLpdtWArExq7BLUegi8FuwcCC7CxKVaaW0T/zan7Uq1oEcuB
	AAJWtynHw0eHKbyth/Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6UT-0004lg-Jr; Wed, 26 Jun 2019 11:53:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6Tv-0004Yv-Mq
 for linux-rockchip@lists.infradead.org; Wed, 26 Jun 2019 11:52:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id d18so2390632wrs.5
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 04:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=pno/4ff/EmVlLZf+cwJB7HjSbJVtgJvFvXzyjJWjZww=;
 b=FrNk6Np4dKzBgiOqvrCZ9v1nd+0v7nIXo4/H33U5FzHgCYLYA7hOtdyTBWOdQOfNX+
 HHHdIpZFYCq/JEgJAPOlqWgVVH5FH0Htlv97hysKhCBtqAImccVHJyM7hmvvjtmBlO5J
 1XrPbvBR/SNIwt+CNPfox7kegKCZVc0GtF0J9p9QlRplCJktwjufwGWfa1a0VOvBluan
 vijqvZns8aBq6RG8cqZbQpEwGAu65ZB7lPyhQSdpj6KETAVoirRV21LbJLw6qB5yfcnG
 WbNKGD5apEUUHpkgiva3bhaZ4xPkax61wvAsSwaGPOyQM22WpthkyWzvdDCKu2I5kXfl
 f0Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=pno/4ff/EmVlLZf+cwJB7HjSbJVtgJvFvXzyjJWjZww=;
 b=EzQ3xHRONhLiQOx4fD0vHa/YJIgomstKwiJ3Pj6AgaDuuUiTe1hU2yfcw6QvYlNdIs
 U+el9Bi9lA+Qz6SywokJe/jQ49wZnyfeIv3IRU+03H2oMY4MF8Vxra4eA9k/iKSwrmL6
 750tHfykHeqC3nmgx6SGN/DLmeKVXHqCh3lnba7kAN/mcw8Ska8q2fyl5tFpzoEdoSkQ
 k0DT5B50CqCVlhqT5nAKzW1EWi0h/UJEsyFO63n1fQ7DsEB1c6jLQ6XatVF57z854TIc
 x+iOCWXbdN5nGaWmYjUtqRYht0OpglWP/bqZfUhQb0MfoeeEiB6F2WtspS4ZgOF4h4pp
 QYLA==
X-Gm-Message-State: APjAAAUIFk33FtUHEWXab2Guw2QE6Cp2rqGY10wH7TVBXJib1aeQmVzx
 J84sZjFRfal9LU+BVr7gtJe8jw==
X-Google-Smtp-Source: APXvYqzkue4b4T2/iz5KX/SFk9Swrlx2jlSbM8pLLMgMOTqmDRsgOwIKUpjFoXL5NkloPNPI8a1GxQ==
X-Received: by 2002:a5d:53c2:: with SMTP id a2mr3508180wrw.8.1561549973997;
 Wed, 26 Jun 2019 04:52:53 -0700 (PDT)
Received: from dell ([2.27.35.164])
 by smtp.gmail.com with ESMTPSA id y2sm14535504wrl.4.2019.06.26.04.52.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 04:52:53 -0700 (PDT)
Date: Wed, 26 Jun 2019 12:52:51 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Tony Xie <tony.xie@rock-chips.com>
Subject: Re: [PATCH v10 0/6] support a new type of PMIC,including two
 chips(rk817 and rk809)
Message-ID: <20190626115251.GR21119@dell>
References: <20190621103258.8154-1-tony.xie@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621103258.8154-1-tony.xie@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_045255_824010_66AA375D 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 huangtao@rock-chips.com, heiko@sntech.de, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, xsf@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, chenjh@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpLCAyMSBKdW4gMjAxOSwgVG9ueSBYaWUgd3JvdGU6Cgo+IE1vc3Qgb2YgZnVuY3Rpb25z
IGFuZCByZWdpc3RlcnMgb2YgdGhlIHJrODE3IGFuZCByazgwOCBhcmUgdGhlIHNhbWUsCj4gc28g
dGhleSBjYW4gc2hhcmUgYWxsbW9zdCBhbGwgY29kZXMuCj4gCj4gVGhlaXIgc3BlY2lmaWNhdGlv
bnMgYXJlIGFzIGZvbGxvd3M6Cj4gICAxKSBUaGUgUks4MDkgYW5kIFJLODA5IGNvbnNpc3Qgb2Yg
NSBEQ0RDcywgOSBMRE9zIGFuZCBoYXZlIHRoZSBzYW1lCj4gcmVnaXN0ZXJzCj4gICAgICBmb3Ig
dGhlc2UgY29tcG9uZW50cyBleGNlcHQgZGNkYzUuCj4gICAyKSBUaGUgZGNkYzUgaXMgYSBib29z
dCBkY2RjIGZvciBSSzgxNyBhbmQgaXMgYSBidWNrIGZvciBSSzgwOS4KPiAgIDMpIFRoZSBSSzgx
NyBoYXMgb25lIHN3aXRjaCBidXQgVGhlIFJrODA5IGhhcyB0d28uCgpKdXN0IHRyaWVkIHRvIGFw
cGx5IHRoaXMgc2V0IHRvIGEgdjUuMi1yYzEgYmFzZSwgYnV0IGl0IGRvZXNuJ3Qgc2VlbQp0byBk
byBzbyBjbGVhbmx5LiAgV291bGQgeW91IGJlIGFibGUgdG8gcmViYXNlIGFuZCByZXNlbmQgcGxl
YXNlPwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2Fs
IExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZv
bGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
