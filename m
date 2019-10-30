Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA716E946B
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 02:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HIlNgm0ByKn34u8XmkZQvA8QaqH/jWwZQ987VSXCtdQ=; b=t2i
	z/iYL9J6umQ8ZEOCK1V3fRbFA+DVBpQfWEhDr0KEEbhB3L7yr23Jm+108LxZEJzHkcRH80zvtLfG8
	BS3vYGN44Wlout2ZsqcBQ5hoJu8CCRdzVJe/9Oh+sLFrYJ7/o/G2Wl6Pd/cHXPxjVQOuAB2siYGW8
	Asoy5vym/j1MqeVEYy5NtTcn0oijPRqeHbClHlSnATjUXssmJRavD32xYxMqcja7EKzIiLxD9/N/x
	qaQdwXL4BgNgdYn1qjQwQx4Ng0eSN3hjtnySQmphxt0Ec5rTp8LGn2gD2GX97lOH9pRSKdJTb2LoH
	46R+yOlFNnk6rqx4y9wESJe5EuBXapQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPcTA-000535-Po; Wed, 30 Oct 2019 01:08:16 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPcT8-00052Z-22
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 01:08:15 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 53so661051otv.4
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Oct 2019 18:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shapescale.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=MEDsGO81vzT7Bj81l5f7ashVm4etOrWZRqf/n5Kox8c=;
 b=SsSyAAUg/9sRFFn5S+kn2NpRDEshED72P0xyDZ+789k8ssOfFyouJ0VDV6mVyLhgx4
 CGqSIMm52GltBzdfnMPM4sc3eqkwfCiqahORjQHIlX8+fmSK/GCbbjGOu6qC3Us8cPlH
 yvlZV0MjMeGdJe2ULNaOVafMhCBkHWBnUBSHNhCFCParFDvY4AyI2uiQftetBTbZFjQj
 Z/TFKutgRamsA84s2n6XKAbK3PGXcVlmfsyDd758yI8B6s2C3RPXWE0hSb9jkFT4OVqm
 bBURhWY0Bmj9kOKAkcN6WyzVhPKbxF9jWkwyQc4PBC8LUmUCm7exmFAVuIRi4CMJ7LqC
 yrUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=MEDsGO81vzT7Bj81l5f7ashVm4etOrWZRqf/n5Kox8c=;
 b=pbxf6kvcCt0MUACdXTpF4HGaqJ95FFwecZVSR4rXthNAqW2A9neQMTI/KJzE7sh1wr
 ZBxOG8H4BPL1D9S0Gbp83mcpUcuJqEb0BOir/x2x+3Wbt845fZNenH0Uz4AffoSDWYLW
 9iI4hGgKocOVRMzOEiXqODWSjw454ZTacpqwjl0vXZZOMlQElslsrmJ3AZj8rOk0/GWb
 q2n7pBY8AZfxyreaVuF7iT2KSVB/hnJyhsMN+KGDoUv71MRaFMXHcGDma7DS1cXE1PdF
 1X86//qoEMu08adst+I8LiDO9k9vlNnjIRNEeqZffwVwSgZf9Fgnca7OI3h2viGlX2f4
 Vwcg==
X-Gm-Message-State: APjAAAU1hxFt6g2D9qbDA1yMEmWku8x1Qju54wdVn/c5/sPfbGAQEKhd
 VVa6fk1l3q4ah2lU1UBv60bvYauNdJhVpe9HNWDyo++U7EwgHw==
X-Google-Smtp-Source: APXvYqyqG+TFS4rlbs4DmcXvJsoeyhaW6k4EPiFpm4Ap+H5EShsQufzEJra6UMr5RHsTFcsek/LcjKrRMq5gQwlUN7M=
X-Received: by 2002:a9d:4791:: with SMTP id b17mr388651otf.75.1572397691423;
 Tue, 29 Oct 2019 18:08:11 -0700 (PDT)
MIME-Version: 1.0
From: Ryan Sherlock <ryan@shapescale.com>
Date: Tue, 29 Oct 2019 18:08:00 -0700
Message-ID: <CADPGVq40Vzp+RnUuPVqj_cm_pa3N4P2zsOA2=qVtnBCpmocZZw@mail.gmail.com>
Subject: rk3399 clock enable latency
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_180814_100369_97F4292C 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi All!

I'm working on the 9tripod X3399 SoM, based on the Rockchip RK3399 SoC.
I am using a Sony IMX 258 image sensor which is attached to the second
I2C bus and using the CIF clock out of GPIO2-B3.

The IMX258 driver has been updated to reference this clock via the
device tree at 24MHz.
The issue I'm seeing is that the driver is trying to access to the
image sensor via the I2C bus before the clock is enabled, yet we set
the pinmux by default in the device tree.

I can see this using a logic analyzer that the clock is enabled very
long after the device has been probed and the driver starts to use the
bus.
It seems like there is some parent to the CIF clock that is
controlling it, but there's nothing in the RK3399 TRM that shows this.

If I compile the IMX258 driver as a module and insmod after boot we
are able to communicate with the camera.

Does this make sense? Shouldn't the clock be enabled as soon as the
pinmux has been set? Or is there perhaps something with the clock
configuration?

Cheers!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
